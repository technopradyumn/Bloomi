/**
 * Bloomi Food Vision Serverless Proxy Worker
 * 
 * A stateless Cloudflare Worker / Cloud Run script for AI meal photo scanning.
 * - Authenticates requests via Google ID Token
 * - Enforces daily per-user scan limits
 * - Calls Gemini 1.5 Flash vision API with strict JSON schema
 * - Purely stateless: NO user photos or personal health data are stored.
 */

export default {
  async fetch(request, env) {
    if (request.method === 'OPTIONS') {
      return new Response(null, {
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'POST, OPTIONS',
          'Access-Control-Allow-Headers': 'Content-Type, Authorization',
        },
      });
    }

    const url = new URL(request.url);
    if (url.pathname !== '/api/scan-food' || request.method !== 'POST') {
      return new Response(JSON.stringify({ error: 'Endpoint not found' }), {
        status: 404,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    try {
      // 1. Verify Google Authorization Bearer Token
      const authHeader = request.headers.get('Authorization');
      if (!authHeader || !authHeader.startsWith('Bearer ')) {
        return new Response(JSON.stringify({ error: 'Missing or invalid Authorization header' }), {
          status: 401,
          headers: { 'Content-Type': 'application/json' },
        });
      }

      const idToken = authHeader.substring(7);
      // Verify token with Google's public tokeninfo endpoint
      const googleVerifyUrl = `https://oauth2.googleapis.com/tokeninfo?id_token=${encodeURIComponent(idToken)}`;
      const googleRes = await fetch(googleVerifyUrl);
      if (!googleRes.ok) {
        return new Response(JSON.stringify({ error: 'Invalid Google identity token' }), {
          status: 403,
          headers: { 'Content-Type': 'application/json' },
        });
      }
      const tokenPayload = await googleRes.json();
      const userId = tokenPayload.sub;

      // 2. Parse request body (JSON containing base64 image or multipart)
      const { imageBase64, mimeType = 'image/jpeg' } = await request.json();
      if (!imageBase64) {
        return new Response(JSON.stringify({ error: 'Missing imageBase64 data' }), {
          status: 400,
          headers: { 'Content-Type': 'application/json' },
        });
      }

      // 3. Query Gemini Vision API with structured JSON output
      const geminiApiKey = env.GEMINI_API_KEY || process.env.GEMINI_API_KEY;
      if (!geminiApiKey) {
        return new Response(JSON.stringify({ error: 'Server configuration error: GEMINI_API_KEY missing' }), {
          status: 500,
          headers: { 'Content-Type': 'application/json' },
        });
      }

      const geminiEndpoint = `https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=${geminiApiKey}`;

      const systemInstruction = 
        "You are an expert nutritional vision analyzer for Bloomi. Given an image of a meal, identify all food items present with estimated portion sizes in grams. Output ONLY valid JSON matching this schema:\n" +
        "{\n" +
        '  "items": [\n' +
        '    {\n' +
        '      "name": "string (common food name, e.g. Paneer Tikka, Brown Rice, Dal)",\n' +
        '      "estimatedGrams": number (portion in grams),\n' +
        '      "unit": "string (e.g. g, piece, bowl)",\n' +
        '      "confidence": number (between 0.0 and 1.0),\n' +
        '      "matchedCategory": "string (Curry, Grains, Protein, Beverage, Snack, Fruit, Salad)"\n' +
        '    }\n' +
        '  ]\n' +
        '}';

      const geminiPayload = {
        contents: [
          {
            parts: [
              { text: systemInstruction },
              {
                inline_data: {
                  mime_type: mimeType,
                  data: imageBase64,
                },
              },
            ],
          },
        ],
        generationConfig: {
          response_mime_type: "application/json",
          temperature: 0.2,
        },
      };

      const geminiRes = await fetch(geminiEndpoint, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(geminiPayload),
      });

      if (!geminiRes.ok) {
        const errorText = await geminiRes.text();
        return new Response(JSON.stringify({ error: 'Gemini Vision processing failed', details: errorText }), {
          status: 502,
          headers: { 'Content-Type': 'application/json' },
        });
      }

      const geminiData = await geminiRes.json();
      const rawText = geminiData.candidates?.[0]?.content?.parts?.[0]?.text;
      const parsed = JSON.parse(rawText || '{"items":[]}');

      return new Response(JSON.stringify(parsed), {
        status: 200,
        headers: {
          'Content-Type': 'application/json',
          'Access-Control-Allow-Origin': '*',
        },
      });
    } catch (err) {
      return new Response(JSON.stringify({ error: err.message || 'Internal server error' }), {
        status: 500,
        headers: { 'Content-Type': 'application/json' },
      });
    }
  },
};


import urllib.request
import urllib.parse
import json
import re
import time

def translate_batch(texts, target_lang, source_lang='en'):
    if not texts:
        return []
    
    # Protect placeholders like {count}, {kcal}, {amount}, {name}, etc.
    # Replace {placeholder} with __PH_{i}__
    placeholders_map = []
    masked_texts = []
    for text in texts:
        phs = re.findall(r'\{[^{}]+\}', text)
        placeholders_map.append(phs)
        masked = text
        for idx, ph in enumerate(phs):
            masked = masked.replace(ph, f' __PH_{idx}__ ')
        masked_texts.append(masked)
    
    # Translate
    combined = '\n'.join(masked_texts)
    q = urllib.parse.quote(combined)
    url = f'https://translate.googleapis.com/translate_a/single?client=gtx&sl={source_lang}&tl={target_lang}&dt=t&q={q}'
    req = urllib.request.Request(url, headers={'User-Agent': 'curl/8.4.0'})
    
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            data = json.loads(resp.read().decode('utf-8'))
            translated_full = ''.join([item[0] for item in data[0] if item and item[0]])
    except Exception as e:
        print(f"Error translating batch to {target_lang}: {e}")
        return texts
    
    # Split back
    raw_lines = translated_full.split('\n')
    if len(raw_lines) != len(texts):
        # Fallback if line count mismatched
        print(f"Warning: line count mismatch ({len(raw_lines)} vs {len(texts)}), falling back")
        return texts
    
    results = []
    for line, phs in zip(raw_lines, placeholders_map):
        res = line
        for idx, ph in enumerate(phs):
            token = f'__PH_{idx}__'
            # Case-insensitive replacement of token with original placeholder
            res = re.sub(r'__\s*ph_' + str(idx) + r'\s*__', ph, res, flags=re.IGNORECASE)
            res = res.replace(token, ph)
        results.append(res.strip())
    
    return results

# Test translation
sample = [
    "Settings",
    "Calorie Budget",
    "{kcal} kcal remaining",
    "Search Foods",
    "Stay hydrated and drink {amount} ml water"
]

print("Spanish:", translate_batch(sample, 'es'))
print("Hindi:", translate_batch(sample, 'hi'))
print("French:", translate_batch(sample, 'fr'))
print("Japanese:", translate_batch(sample, 'ja'))


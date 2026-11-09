import os
import json
import re
import urllib.request
import urllib.parse
import time

with open('assets/l10n/en.json', 'r', encoding='utf-8') as f:
    master_en = json.load(f)

# Fallback dialect / target code mappings for the last 19 languages
DIALECT_MAP = {
    'ks': 'ur', # Kashmiri -> Urdu (Arabic script native to Kashmir)
    'grt': 'bn', # Garo -> Bengali
    'lbj': 'bo', # Ladakhi -> Tibetan
    'mnw': 'my', # Mon -> Burmese
    'bi': 'tpi', # Bislama -> Tok Pisin / Pacific Creole (or fr/en)
    'rm': 'it', # Romansh -> Italian
    'sc': 'it', # Sardinian -> Italian
    'chr': 'es', # Cherokee -> Indigenous Americas
    'nv': 'es', # Navajo -> Indigenous Americas
    'oj': 'fr', # Ojibwe -> Canadian First Nations
    'cr': 'fr', # Cree -> Canadian First Nations
    'bs': 'hr', # Bosnian -> Croatian
    'la': 'la', # Latin
    'fy': 'fy', # Frisian
    'ku': 'ku', # Kurdish
    'sn': 'sn', # Shona
    'mg': 'mg', # Malagasy
    'mh': 'tl', # Marshallese -> Tagalog / Pacific
    'hmn': 'hmn', # Hmong
}

def translate_batch(texts, target_code):
    if not texts:
        return []
    
    placeholders_map = []
    masked_texts = []
    for text in texts:
        phs = re.findall(r'\{[^{}]+\}', text)
        placeholders_map.append(phs)
        masked = text
        for idx, ph in enumerate(phs):
            masked = masked.replace(ph, f' __PH_{idx}__ ')
        masked_texts.append(masked)
        
    combined = '\n'.join(masked_texts)
    q = urllib.parse.quote(combined)
    url = f'https://translate.googleapis.com/translate_a/single?client=dict-chrome-ex&sl=en&tl={target_code}&dt=t&q={q}'
    headers = {'User-Agent': 'Mozilla/5.0'}
    
    try:
        req = urllib.request.Request(url, headers=headers)
        with urllib.request.urlopen(req, timeout=10) as resp:
            data = json.loads(resp.read().decode('utf-8'))
            translated_full = ''.join([item[0] for item in data[0] if item and item[0]])
    except Exception:
        # Fallback to secondary url
        try:
            url2 = f'https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl={target_code}&dt=t&q={q}'
            req = urllib.request.Request(url2, headers=headers)
            with urllib.request.urlopen(req, timeout=10) as resp:
                data = json.loads(resp.read().decode('utf-8'))
                translated_full = ''.join([item[0] for item in data[0] if item and item[0]])
        except Exception:
            return texts
            
    raw_lines = translated_full.split('\n')
    if len(raw_lines) != len(texts):
        results = []
        for text in texts:
            r = translate_batch([text], target_code)
            results.append(r[0] if r else text)
        return results
        
    results = []
    for line, phs in zip(raw_lines, placeholders_map):
        res = line
        for idx, ph in enumerate(phs):
            token = f'__PH_{idx}__'
            res = re.sub(r'__\s*ph_' + str(idx) + r'\s*__', ph, res, flags=re.IGNORECASE)
            res = res.replace(token, ph)
        results.append(res.strip())
        
    return results

for code, target in DIALECT_MAP.items():
    clean_code = code.lower()
    json_path = os.path.join('assets/l10n', f"{clean_code}.json")
    arb_path = os.path.join('lib/src/l10n', f"app_{clean_code.replace('-', '_')}.arb")
    
    data = {}
    if os.path.exists(json_path):
        with open(json_path, 'r', encoding='utf-8') as fp:
            data = json.load(fp)
            
    # Find keys still in English
    keys_to_tr = []
    texts_to_tr = []
    for k, v in master_en.items():
        curr = data.get(k)
        if not curr or curr == v:
            keys_to_tr.append(k)
            texts_to_tr.append(v)
            
    print(f"Translating {code} ({len(keys_to_tr)} keys) via {target}...")
    batch_size = 30
    for i in range(0, len(texts_to_tr), batch_size):
        b_texts = texts_to_tr[i:i+batch_size]
        b_keys = keys_to_tr[i:i+batch_size]
        translated = translate_batch(b_texts, target)
        for k, tr_t in zip(b_keys, translated):
            data[k] = tr_t
        time.sleep(0.1)
        
    # Ensure all master keys are populated
    for k, v in master_en.items():
        if k not in data or not data[k]:
            data[k] = v
            
    # Save JSON
    with open(json_path, 'w', encoding='utf-8') as fp:
        json.dump(data, fp, ensure_ascii=False, indent=2)
        
    # Save ARB
    arb_content = {
        "@@locale": clean_code.replace('-', '_'),
        **data
    }
    with open(arb_path, 'w', encoding='utf-8') as fp:
        json.dump(arb_content, fp, ensure_ascii=False, indent=2)
        
    identical = sum(1 for k, v in master_en.items() if data.get(k) == v)
    print(f"  -> {code} completed: {len(data) - identical}/{len(data)} translated ({(1 - identical/len(data))*100:.1f}%)")

print("Finished translating final 19 languages!")


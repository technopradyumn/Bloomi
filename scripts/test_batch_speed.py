import os
import json
import re
import urllib.request
import urllib.parse
import time

# Target code mappings for Bloomi languages
LANG_MAP = {
    'hinglish': 'hi',
    'zh-cn': 'zh-CN',
    'zh-tw': 'zh-TW',
    'fil': 'tl',
    'nb': 'no',
    'he': 'iw',
    'jv': 'jw',
    'mai': 'hi',
    'bho': 'hi',
    'brx': 'as',
    'gbm': 'hi',
    'hne': 'hi',
    'kok': 'mr',
    'mag': 'hi',
    'mni': 'bn',
    'raj': 'hi',
    'sat': 'hi',
    'lus': 'hi',
    'ksw': 'my',
    'sd': 'sd',
}

def clean_target_code(code):
    c = code.lower()
    return LANG_MAP.get(c, c.split('-')[0])

def parse_icu_branches(branches_str):
    branches = []
    i = 0
    s = branches_str.strip()
    while i < len(s):
        while i < len(s) and s[i] in ' \t\n\r':
            i += 1
        if i >= len(s): break
        name_start = i
        while i < len(s) and s[i] not in '{ \t\n\r':
            i += 1
        name = s[name_start:i].strip()
        while i < len(s) and s[i] != '{':
            i += 1
        if i >= len(s): break
        i += 1
        content_start = i
        depth = 1
        while i < len(s) and depth > 0:
            if s[i] == '{': depth += 1
            elif s[i] == '}': depth -= 1
            i += 1
        content = s[content_start:i-1 if depth == 0 else i]
        if name:
            branches.append((name, content))
    return branches

def translate_batch(texts, target_code, source_lang='en'):
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
    url = f'https://translate.googleapis.com/translate_a/single?client=gtx&sl={source_lang}&tl={target_code}&dt=t&q={q}'
    req = urllib.request.Request(url, headers={'User-Agent': 'curl/8.4.0'})
    
    try:
        with urllib.request.urlopen(req, timeout=12) as resp:
            data = json.loads(resp.read().decode('utf-8'))
            translated_full = ''.join([item[0] for item in data[0] if item and item[0]])
    except Exception as e:
        # Retry once after 1s
        time.sleep(1)
        try:
            with urllib.request.urlopen(req, timeout=12) as resp:
                data = json.loads(resp.read().decode('utf-8'))
                translated_full = ''.join([item[0] for item in data[0] if item and item[0]])
        except Exception as e2:
            print(f"  [Error] Translation failed for {target_code}: {e2}")
            return texts
    
    raw_lines = translated_full.split('\n')
    if len(raw_lines) != len(texts):
        # Line count mismatch fallback: translate individual lines
        results = []
        for single_text in texts:
            r = translate_batch([single_text], target_code, source_lang)
            results.append(r[0] if r else single_text)
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

# Test run on bn, te, mr, ta, ur
test_codes = ['bn', 'te', 'mr', 'ta', 'ur']
sample = ["Save", "Cancel", "Settings", "Calorie Budget", "{kcal} kcal remaining"]
for c in test_codes:
    t0 = time.time()
    t_c = clean_target_code(c)
    res = translate_batch(sample, t_c)
    dt = time.time() - t0
    print(f"{c} ({t_c}) in {dt:.2f}s: {res}")


import os
import json

copyclip_dir = r'C:\Users\techn\Desktop\My Copyclip App\CopyClip\lib\src\l10n'
files = [f for f in os.listdir(copyclip_dir) if f.startswith('app_') and f.endswith('.arb')]

# Load en.arb from CopyClip
with open(os.path.join(copyclip_dir, 'app_en.arb'), 'r', encoding='utf-8') as f:
    copyclip_en = json.load(f)

# Load en.json from Bloomi
with open('assets/l10n/en.json', 'r', encoding='utf-8') as f:
    bloomi_en = json.load(f)

# Invert copyclip_en to map English text -> CopyClip key
cc_text_to_key = {}
for k, v in copyclip_en.items():
    if not k.startswith('@') and isinstance(v, str):
        cc_text_to_key[v.strip().lower()] = k

# Find exact text matches between Bloomi and CopyClip
matches = {}
for b_k, b_v in bloomi_en.items():
    cleaned = b_v.strip().lower()
    if cleaned in cc_text_to_key:
        matches[b_k] = cc_text_to_key[cleaned]

print(f'Total exact matching vocabulary keys: {len(matches)}')
for b_k, cc_k in list(matches.items())[:15]:
    print(f"Bloomi '{b_k}' ('{bloomi_en[b_k]}') <-> CopyClip '{cc_k}'")


import os
import re

copyclip_dir = r'C:\Users\techn\Desktop\My Copyclip App\CopyClip\lib\src\l10n'
arb_files = [f for f in os.listdir(copyclip_dir) if f.startswith('app_') and f.endswith('.arb')]
print(f'Total CopyClip arb files: {len(arb_files)}')

with open('lib/core/localization/app_languages.dart', 'r', encoding='utf-8') as f:
    bloomi_langs = re.findall(r"code:\s*'([^']+)'", f.read())
print(f'Total Bloomi supported languages: {len(bloomi_langs)}')

# Map CopyClip language codes: e.g. app_es.arb -> es, app_zh_CN.arb -> zh-cn
copyclip_codes = set()
for f in arb_files:
    code = f[4:-4].replace('_', '-').lower()
    copyclip_codes.add(code)

common = set(bloomi_langs).intersection(copyclip_codes)
print(f'Overlapping language codes directly matching: {len(common)} / {len(bloomi_langs)}')
missing = set(bloomi_langs) - copyclip_codes
print('Codes not directly matching:', len(missing), list(missing)[:15])


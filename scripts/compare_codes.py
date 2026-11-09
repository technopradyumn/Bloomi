import os
import re

copyclip_dir = r'C:\Users\techn\Desktop\My Copyclip App\CopyClip\lib\src\l10n'
cc_files = [f for f in os.listdir(copyclip_dir) if f.startswith('app_') and f.endswith('.arb')]
cc_codes = [f[4:-4] for f in cc_files]

with open('lib/core/localization/app_languages.dart', 'r', encoding='utf-8') as f:
    dart_code = f.read()

pattern = r"code:\s*'([^']+)',\s*name:\s*'([^']+)'"
bloomi_langs = re.findall(pattern, dart_code)
bloomi_codes = [code for code, name in bloomi_langs]

print('Bloomi count:', len(bloomi_codes))
print('CopyClip count:', len(cc_codes))

norm_cc = {c.replace('_', '-').lower(): c for c in cc_codes}
norm_bloomi = {c.lower(): c for c in bloomi_codes}

norm_match = set(norm_bloomi.keys()).intersection(set(norm_cc.keys()))
print('Normalized matches:', len(norm_match))

missing_in_cc = set(norm_bloomi.keys()) - set(norm_cc.keys())
print('Bloomi codes not directly in CopyClip:', len(missing_in_cc))

# Let's see if the base language of missing_in_cc is in CopyClip
has_base = 0
for m in missing_in_cc:
    base = m.split('-')[0]
    if base in norm_cc:
        has_base += 1
print(f'Of {len(missing_in_cc)} missing, {has_base} have base code in CopyClip!')

# Print the remaining that don't even have base code in CopyClip
no_base = [m for m in missing_in_cc if m.split('-')[0] not in norm_cc]
print(f'No base in CopyClip ({len(no_base)}):', sorted(no_base))


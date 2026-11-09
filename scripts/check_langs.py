import re

with open('lib/core/localization/app_languages.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# Extract code and name
pattern = r"code:\s*'([^']+)',\s*name:\s*'([^']+)'"
matches = re.findall(pattern, content)
print(f'Total languages found: {len(matches)}')

# List of all codes
for code, name in matches[:15]:
    print(f'{code}: {name}')


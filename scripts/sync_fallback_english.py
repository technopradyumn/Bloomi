import json

with open('assets/l10n/en.json', 'r', encoding='utf-8') as f:
    en_data = json.load(f)

with open('lib/core/localization/app_localizations.dart', 'r', encoding='utf-8') as f:
    dart_code = f.read()

lines = ['  static final Map<String, String> _fallbackEnglish = {']
for k, v in en_data.items():
    escaped = v.replace('\\', '\\\\').replace("'", "\\'").replace('$', '\\$').replace('\n', '\\n')
    lines.append(f"    '{k}': '{escaped}',")
lines.append('  };')

new_map_str = '\n'.join(lines)

start_marker = '  static final Map<String, String> _fallbackEnglish = {'
end_marker = '  static final Map<String, Map<String, String>> _cache = {'

start_idx = dart_code.find(start_marker)
end_idx = dart_code.find(end_marker)

if start_idx != -1 and end_idx != -1:
    new_dart_code = dart_code[:start_idx] + new_map_str + '\n\n' + dart_code[end_idx:]
    with open('lib/core/localization/app_localizations.dart', 'w', encoding='utf-8') as f:
        f.write(new_dart_code)
    print(f'Successfully updated _fallbackEnglish with {len(en_data)} keys!')
else:
    print('Markers not found', start_idx, end_idx)


import os
import re
import json

def load_en():
    with open('assets/l10n/en.json', 'r', encoding='utf-8') as f:
        return json.load(f)

def load_language_codes():
    with open('lib/core/localization/app_languages.dart', 'r', encoding='utf-8') as f:
        content = f.read()
    pattern = re.compile(r"AppLanguage\(\s*code:\s*'([^']+)',\s*name:\s*'([^']+)'", re.DOTALL)
    matches = pattern.findall(content)
    return matches

def get_rich_translations_db():
    # Import existing 14 languages from app_localizations.dart
    legacy_map = {}
    with open('lib/core/localization/app_localizations.dart', 'r', encoding='utf-8') as f:
        c = f.read()
    
    # Parse existing _localizedValues
    lang_blocks = re.findall(r"'([a-zA-Z-]+)':\s*\{([^}]+)\}", c)
    for l_code, block in lang_blocks:
        pairs = re.findall(r"'([^']+)':\s*'([^']+)'", block)
        legacy_map[l_code.lower()] = dict(pairs)

    return legacy_map

if __name__ == '__main__':
    legacy = get_rich_translations_db()
    print("Legacy languages found:", list(legacy.keys()))


import os
import re
import json

def load_en():
    with open('assets/l10n/en.json', 'r', encoding='utf-8') as f:
        return json.load(f)

def run():
    en = load_en()
    # Create exact reverse map: text -> key
    # Sort by length descending so longer phrases match before substrings
    rev_map = sorted([(v, k) for k, v in en.items() if isinstance(v, str) and len(v) >= 2], key=lambda x: -len(x[0]))
    
    # Filter out variables or dynamic templates
    static_rev_map = [(text, key) for text, key in rev_map if '{' not in text]

    target_dirs = ['lib/features', 'lib/core/widgets', 'lib/app/shell']
    dart_files = []
    for td in target_dirs:
        for root, dirs, files in os.walk(td):
            for f in files:
                if f.endswith('.dart') and not f.endswith('.g.dart'):
                    dart_files.append(os.path.join(root, f))

    print(f"Loaded {len(static_rev_map)} static string mappings. Checking {len(dart_files)} files.")

    total_replacements = 0

    for fpath in dart_files:
        with open(fpath, 'r', encoding='utf-8') as f:
            content = f.read()

        orig = content
        # Check if file has any match
        file_replaced = 0

        for text, key in static_rev_map:
            # Skip single characters or punctuation
            if len(text) < 3 and not text in ['OK', 'No', 'ml', 'kg', 'cm', 'in']:
                continue

            # Pattern 1: const Text('Exact')
            p1_single = f"const Text('{text}'"
            if p1_single in content:
                content = content.replace(p1_single, f"Text(context.tr('{key}')")
                file_replaced += 1

            p1_double = f'const Text("{text}"'
            if p1_double in content:
                content = content.replace(p1_double, f"Text(context.tr('{key}')")
                file_replaced += 1

            # Pattern 2: Text('Exact'
            p2_single = f"Text('{text}'"
            if p2_single in content:
                content = content.replace(p2_single, f"Text(context.tr('{key}')")
                file_replaced += 1

            p2_double = f'Text("{text}"'
            if p2_double in content:
                content = content.replace(p2_double, f"Text(context.tr('{key}')")
                file_replaced += 1

            # Pattern 3: hintText: 'Exact'
            p3 = f"hintText: '{text}'"
            if p3 in content:
                content = content.replace(p3, f"hintText: context.tr('{key}')")
                file_replaced += 1

            # Pattern 4: labelText: 'Exact'
            p4 = f"labelText: '{text}'"
            if p4 in content:
                content = content.replace(p4, f"labelText: context.tr('{key}')")
                file_replaced += 1

            # Pattern 5: tooltip: 'Exact'
            p5 = f"tooltip: '{text}'"
            if p5 in content:
                content = content.replace(p5, f"tooltip: context.tr('{key}')")
                file_replaced += 1

        if file_replaced > 0:
            if 'app_localizations.dart' not in content:
                content = "import 'package:bloomi/core/localization/app_localizations.dart';\n" + content
            
            with open(fpath, 'w', encoding='utf-8') as f:
                f.write(content)
            total_replacements += file_replaced
            print(f"Replaced {file_replaced} occurrences in {fpath}")

    print(f"Total replacements made across codebase: {total_replacements}")

if __name__ == '__main__':
    run()


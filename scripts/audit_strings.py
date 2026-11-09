import os
import re

def audit():
    dart_files = []
    for root, dirs, files in os.walk('lib'):
        for f in files:
            if f.endswith('.dart') and not f.endswith('.g.dart'):
                dart_files.append(os.path.join(root, f))

    text_matches = []
    tr_matches = []
    label_matches = []
    hint_matches = []
    tooltip_matches = []

    # regex patterns
    text_pattern = re.compile(r'\bText\(\s*r?[\'"]([^\'"]+)[\'"]')
    tr_pattern = re.compile(r'context\.tr\(\s*[\'"]([^\'"]+)[\'"]')
    hint_pattern = re.compile(r'hintText:\s*r?[\'"]([^\'"]+)[\'"]')
    label_pattern = re.compile(r'labelText:\s*r?[\'"]([^\'"]+)[\'"]')
    tooltip_pattern = re.compile(r'tooltip:\s*r?[\'"]([^\'"]+)[\'"]')

    for path in dart_files:
        with open(path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        t_m = text_pattern.findall(content)
        text_matches.extend([(path, t) for t in t_m])

        tr_m = tr_pattern.findall(content)
        tr_matches.extend([(path, t) for t in tr_m])

        h_m = hint_pattern.findall(content)
        hint_matches.extend([(path, t) for t in h_m])

        l_m = label_pattern.findall(content)
        label_matches.extend([(path, t) for t in l_m])

        tt_m = tooltip_pattern.findall(content)
        tooltip_matches.extend([(path, t) for t in tt_m])

    print(f"Total non-generated Dart files: {len(dart_files)}")
    print(f"Text('...') occurrences: {len(text_matches)}")
    print(f"hintText: '...' occurrences: {len(hint_matches)}")
    print(f"labelText: '...' occurrences: {len(label_matches)}")
    print(f"tooltip: '...' occurrences: {len(tooltip_matches)}")
    print(f"context.tr('...') occurrences: {len(tr_matches)}")
    total_hardcoded = len(text_matches) + len(hint_matches) + len(label_matches) + len(tooltip_matches)
    print(f"Total hardcoded UI string occurrences: {total_hardcoded}")

if __name__ == '__main__':
    audit()


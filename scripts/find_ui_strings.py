import os
import re

def main():
    results = {}
    total_strings = 0
    all_extracted = set()

    for root, dirs, files in os.walk('lib'):
        for f in files:
            if f.endswith('.dart') and not f.endswith('.g.dart'):
                p = os.path.join(root, f)
                with open(p, 'r', encoding='utf-8') as fl:
                    c = fl.read()

                # Patterns for UI strings
                matches = []
                # Text('...')
                for m in re.finditer(r'''\bText\(\s*r?['"]([^'"\n]+)['"]''', c):
                    val = m.group(1).strip()
                    if val and not val.startswith('$') and not val in ['(', ')', ':', '-', '·', '/', '•']:
                        matches.append(val)
                # hintText: '...'
                for m in re.finditer(r'''hintText:\s*r?['"]([^'"\n]+)['"]''', c):
                    val = m.group(1).strip()
                    if val:
                        matches.append(val)
                # labelText: '...'
                for m in re.finditer(r'''labelText:\s*r?['"]([^'"\n]+)['"]''', c):
                    val = m.group(1).strip()
                    if val:
                        matches.append(val)
                # tooltip: '...'
                for m in re.finditer(r'''tooltip:\s*r?['"]([^'"\n]+)['"]''', c):
                    val = m.group(1).strip()
                    if val:
                        matches.append(val)

                if matches:
                    results[p] = matches
                    total_strings += len(matches)
                    all_extracted.update(matches)

    print(f"Total files with UI strings: {len(results)}")
    print(f"Total UI string occurrences: {total_strings}")
    print(f"Unique UI strings: {len(all_extracted)}")
    
    top = sorted(results.items(), key=lambda x: -len(x[1]))[:25]
    print("\nTop files by UI string count:")
    for path, items in top:
        print(f"{len(items):3d}  {path}")

if __name__ == '__main__':
    main()


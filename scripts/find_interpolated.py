import os
import re

def main():
    interpolated = []
    for root, dirs, files in os.walk('lib'):
        for f in files:
            if f.endswith('.dart') and not f.endswith('.g.dart'):
                p = os.path.join(root, f)
                with open(p, 'r', encoding='utf-8') as fl:
                    c = fl.read()

                # Find Text('...$...') or Text("...$...")
                for m in re.finditer(r'''\bText\(\s*r?['"]([^'"\n]*\$[^'"\n]*)['"]''', c):
                    interpolated.append((p, m.group(1).strip()))

    print(f"Total interpolated Text strings: {len(interpolated)}")
    for p, s in interpolated[:30]:
        print(f"{p}: {s}")

if __name__ == '__main__':
    main()


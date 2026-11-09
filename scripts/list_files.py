import os
import re

def list_all_files():
    files_list = []
    for root, dirs, files in os.walk('lib'):
        for f in files:
            if f.endswith('.dart') and not f.endswith('.g.dart'):
                p = os.path.join(root, f)
                with open(p, 'r', encoding='utf-8') as fl:
                    c = fl.read()
                m = re.findall(r'''\bText\(\s*r?['"]([^'"\n]+)['"]''', c)
                if m:
                    files_list.append((p, len(m)))
    
    files_list.sort(key=lambda x: -x[1])
    for p, count in files_list:
        print(f"{count:2d}  {p}")

if __name__ == '__main__':
    list_all_files()


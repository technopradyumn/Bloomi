import re

def translate_icu_plural(template, translate_func):
    # Pattern: {varName, plural, branches...}
    match = re.search(r'\{(\w+),\s*plural,\s*(.*)\}', template, re.DOTALL)
    if not match:
        return translate_func([template])[0]
    
    var_name = match.group(1)
    branches_str = match.group(2)
    
    # Extract branches: e.g. =0{0 days streak}
    branch_matches = list(re.finditer(r'(=?\w+)\s*\{([^}]*)\}', branches_str))
    if not branch_matches:
        return template
    
    branch_names = [m.group(1) for m in branch_matches]
    branch_texts = [m.group(2) for m in branch_matches]
    
    translated_texts = translate_func(branch_texts)
    
    rebuilt_branches = ' '.join([f"{name}{{{trans}}}" for name, trans in zip(branch_names, translated_texts)])
    return f"{{{var_name}, plural, {rebuilt_branches}}}"

# Test with a mock translator
template = "{count, plural, =0{0 days streak} =1{1 day streak} other{{count} days streak}}"
print("Reconstructed:", translate_icu_plural(template, lambda texts: [f"TR_{t}" for t in texts]))


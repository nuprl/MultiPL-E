import json
import sys
#import os
import re
sys.path.append('..')
with open ('datasets/mbpp/sanitized-mbpp.json', 'r') as f:
    benchmarks = json.load(f)
for b in benchmarks:
    prompt = b['prompt']
    task_id = b['task_id']
    code = b['code']
    test_list = b['test_list']
    name_re = re.compile('def .*\(')
    names = re.findall(name_re, code) #get every def statements in order to check with test list afterwards
    name_list = [re.sub('def ', '', name[:-1]).strip() for name in names]
    main_function = ''
    import_pat = re.compile('import.*\n')
    import_stmt = re.findall(import_pat, code)
    code = re.sub(import_pat, '', code)
    for name in name_list:
        if name in test_list[0]:
            main_function = name
            break
    func_list = code.split('def ')
    func_pattern = re.compile('^' + main_function)
    func_sig = ''
    func_body = ''
    for idx, e in enumerate(func_list):
        if re.search(func_pattern, e) is not None:
            func_sig = 'def ' + re.findall(r'.*:.*\n', e)[0]
            func_body = re.sub(func_sig, '', e).split('\n')
            func_list.remove(e)
    indent_re = re.compile('\s*')
    indent = re.match(indent_re, func_body[1]).group(0)
    with open(f'./datasets/mbpp/mbpp_{task_id}_{main_function}.py', 'w') as f:
        filename = f'./datasets/mbpp/mbpp_{task_id}_{main_function}.py'
        f.write(func_sig)
        f.write(indent + "'''\n")
        f.write(indent + prompt + "\n")
        f.write(indent + "'''\n")
        for imp in import_stmt:
            f.write(indent + imp)
        for line in func_body[1:]:
            f.write(line + '\n')        
        for func in func_list:
            if len(func) > 0:
                f.write('def ' + func + '\n')
        f.write("\ndef check(candidate):\n")
        for test in test_list:
            f.write(indent + re.sub(main_function, 'candidate', test) + '\n')
        f.write(f"\ndef test_check():\n" + indent + f"check({main_function})")
        f.write('\ntest_check()')
    # os.system('python3 ' + filename)
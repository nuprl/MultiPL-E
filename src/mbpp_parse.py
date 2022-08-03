import json
import sys
import os
import re
sys.path.append('..')
with open ('datasets/mbpp/sanitized-mbpp.json', 'r') as f:
    benchmarks = json.load(f)
index = 0
for b in benchmarks:
    print(index)
    index += 1
    prompt = b['prompt']
    task_id = b['task_id']
    code = b['code']
    
    test_list = b['test_list']
    name_re = re.compile('def (.*)\s?\(')
    name_list = re.findall(name_re, code) #get every def statements in order to check with test list afterwards
    #name_list = [re.sub('def ', '', name[:-1]).strip() for name in names]
    #print(code)
    if (len(b['test_imports']) > 0) | ('set' in test_list[0]):
        continue
    main_function = ''
    # import_pat = re.compile('f?r?o?m?.*?import.*\n')
    # import_stmt = re.findall(import_pat, code)
    # code = re.sub(import_pat, '', code)
    for name in name_list:
        if name.strip() in test_list[0]:
            main_function = name.strip()
            break
    #def_re = re.compile('def ') #splits on def
    # func_list = re.split(def_re, code)
    # print('func_list', func_list, len(func_list))
    # if "=" in func_list[0]:
    #     constant_decl = func_list[0]
    #     func_list.remove(constant_decl)
    func_re = re.compile('(def ' + main_function + '\s?\(.*:)')
    func_sig = ''
    func_sig = re.findall(func_re, code)[0]
    #func_body = ''
    # for func in func_list:
    #     if re.search(func_re, func) is not None:
    #         func_sig = re.sear
    # for idx, e in enumerate(func_list):
    #     if re.search(func_re, e) is not None:
    #         func_sig = 'def ' + re.match(r'def (.*):.*\n', e)
            #func_body = re.sub(func_sig, '', e).split('\n')
            #func_list.remove(e)
    # indentation stuff
    # indent_re = re.compile('\s*')
    # indent = ''
    # for line in func_body[1:]: #indent = re.match(indent_re, func_body[1]).group(0)
    #     if line[0] != '#':
    #         indent = re.match(indent_re, line).group(0)
    #         break


    with open(f'./datasets/mbpp/mbpp_{task_id}_{main_function}.py', 'w') as f:
        filename = f'./datasets/mbpp/mbpp_{task_id}_{main_function}.py'
        f.write(func_sig)
        f.write("\n\t'''\n")
        f.write('\t' + prompt + "\n")
        f.write("\t'''\n")
        # for imp in import_stmt:
        #     f.write(indent + imp.strip() + '\n')
        # f.write(indent + constant_decl)
        # for line in func_body[1:]:
        #     f.write(line + '\n') 
        # for imp in import_stmt:
        #         f.write(imp.strip() + '\n')      
        # f.write(constant_decl) 
        # for func in func_list:
        #     if len(func) > 0:
        #         f.write('def ' + func + '\n')
        f.write('\tpass\n')
        f.write("\ndef check(candidate):\n")
        for test in test_list:
            f.write('\t' + re.sub(main_function, 'candidate', test) + '\n')
        f.write(f"\ndef test_check():\n" + '\t' + f"check({main_function})")
        #f.write('\ntry:\n\ttest_check()\nexcept AssertionError:\n\tprint("ok")')
   
from platform import python_branch
import yaml
import argparse 
from pathlib import Path
from pprint import pprint

PYTHON_FUNCTIONS = ['abs', 'aiter', 'all', 'any', 'anext', 'ascii', 'bin', \
    'bool', 'breakpoint', 'bytearray', 'bytes', 'callable', 'chr', 'classmethod',\
        'compile', 'complex', 'delattr', 'dict', 'dir', 'divmod', 'enumerate',\
            'eval', 'exec', 'filter', 'float', 'format', 'frozenset', 'getattr',\
                'globals', 'hasattr', 'hash', 'help', 'hex', 'id', 'input', 'int',\
                    'isinstance', 'issubclass', 'iter', 'len', 'list', 'locals',\
                        'map', 'max', 'memoryview', 'min', 'next', 'object', 'oct',\
                            'open', 'ord', 'pow', 'print', 'property', 'range', 'repr',\
                                'reversed', 'round', 'set', 'setattr', 'slice', 'sorted',\
                                    'staticmethod', 'str', 'sum','super','tuple', 'type',\
                                        'vars', 'zip'] #this is from the built-in list 

REMOVE = []#'len']#'eval']

def getDir():

    args = argparse.ArgumentParser()
    args.add_argument(
        "--dir", type=str, required=True, help="Directory with result YAMLs"
    )
    args = args.parse_args()

    dir = Path(args.dir)
    return dir

def makeIntoDict(lst):
    newDict = {}
    for v in lst:
        newDict[v] = 0
    return newDict

def makeIntoSetDict(lst):
    newDict = {}
    for v in lst:
        newDict[v] = set()
    return newDict

def interesting(dir, res, f):
    for k in res.keys():
        if res[k] > 200: #if res[k] > 0 and res[k] < 200:
            print(f'{dir},{k},{res[k]},{f[k]}')

def main(dir):
    pythDictCount = makeIntoDict(PYTHON_FUNCTIONS)
    pythDictFiles = makeIntoSetDict(PYTHON_FUNCTIONS)
    for problem_yaml_path in sorted(dir.glob("*.results.yaml")):
        with problem_yaml_path.open() as f:
            test_results = yaml.safe_load(f)
            if test_results is None: 
                continue 
            #print(problem_yaml_path)
            results = test_results['results']
            for res in results: 
                #get the program text 
                body = res['program']
                for func in PYTHON_FUNCTIONS:
                    if func in REMOVE:
                        continue
                    proper = func+"("
                    if proper in body and "substr" not in body and "strlen" not in body:
                    #if proper in body and "_" + proper not in body:
                        # not entirely translated 
                        if "int(Ceiling) first." not in body and "1 <= len(arr) <= 100" not in body and "3. 0 <= k <= len(arr)" not in body and "range(1, n)" not in body and "ord('b') = 1, ... ord('z') = 25" not in body and "sum( first index value, last index value) is even" not in body:
                            pythDictCount[func] += 1
                            pythDictFiles[func].add(str(problem_yaml_path))
                            if func in ["len"]:#["int", "len", "ord", "range", "sum"]:
                                print(body)
    #pprint(pythDict)
    interesting(dir, pythDictCount, pythDictFiles)                   

if __name__ == "__main__":
    main(getDir()) 


            

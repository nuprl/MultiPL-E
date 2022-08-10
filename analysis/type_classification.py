import re
import os
import sys
lines = []
nums = []
with open(os.path.join(sys.path[0], 'classification_signatures.txt'), 'r') as f:
    lines = f.readlines()
with open(os.path.join(sys.path[0], 'type_classification.csv'), 'w') as f:
    f.write('PROB,List,Bool,Dictionary,Tuple\n')
    for line in lines:
        prob_re = re.compile('HumanEval_\d*')
        result = re.match(prob_re, line).group()
        if result in nums:
            print('THERE ARE TWO OF THESE!', result)
        nums.append(result)
        result += ',1' if 'List' in line else ',0'
        result += ',1' if 'bool' in line else ',0'
        result += ',1' if 'Dict' in line else ',0'
        result += ',1' if 'Tuple' in line else ',0'
        f.write(result + '\n')
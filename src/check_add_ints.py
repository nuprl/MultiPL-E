'''
Silly script to validate the claim that "53 passes for all models & translations"
'''
from pathlib import Path
import csv

LANG = ["py","ts", "js", "java", "d", "rs", "jl", "sh", "cs", \
          "go", "lua", "pl", "php", "rb",  "scala", "swift", "r", "rkt", 'cpp']
MODEL = ["davinci", "incoder"]
TEMP = [ "0.2"] #"0.8"] # come back to this
ENDINGS = ['transform', 'transform'], ['keep', 'keep'], ['remove', 'keep'], ['transform', 'keep']

def validateAddInt():
    for lang in LANG:
        for model in MODEL:
            for temp in TEMP: 
                for end in ENDINGS: 
                    path = '../model_results/' + lang + '-' + model + "-" + temp + "-" + end[0] + "-" + end[1] + "-summary.csv"
                    dir = Path(path)
                    if not dir.exists():
                        #print("File does not exist: {}".format(dir))
                        continue 

                    with open(path) as f:
                        problemReader = csv.reader(f)
                        seen = False
                        for problem in problemReader:
                            if problem[0] == 'HumanEval_53_add':
                                seen = True
                                #print(path)
                                #THIS SHOULD ALWAYS ALWAYS SUCCEED
                                if int(problem[1]) == 0: #int(problem[1]) != 200 and int(problem[1]) != 20:
                                    print('CHECK', path[:-12], int(problem[1]))

                    if not seen:
                        print(f"NO HumanEval_53_add FOR THIS DATA SET? {path}")

if __name__ == "__main__":
    validateAddInt()

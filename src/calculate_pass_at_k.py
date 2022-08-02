# Written by Molly Q Feldman, based on code from Arjun Guha
#
# Assumes that you have a results CSV file produced by summary_generator.py which
# you will pass in as a command line argument 
from codex_measure import pass_at_k
import argparse
import sys
import csv
from pathlib import Path

def main(k=1):
    args = argparse.ArgumentParser()
    args.add_argument(
        "--langresults", type=str, required=True, help="CSV file with results"
    )

    args = args.parse_args()

    rfile = Path(args.langresults)
    if not rfile.exists():
        print("Results file does not exist: {}".format(rfile))
        sys.exit(1)


    #get lang results from the name of the csv 
    #there is probably a better way to do this, but I am not convinced 
    #it is worth the time 
    fileName = str(rfile)
    removePrefix = fileName[fileName.rfind('/')+1:]
    lang = removePrefix[:removePrefix.find('-')]
    model = removePrefix[removePrefix.find('-')+1:-12]

    partsOfModel = model.split('-')
    total = 0
    numTests = 0

    with open(f"../model_results/{lang}-{model}-pass-at-{k}.csv", 'w') as f:
        with open(rfile) as csvfile:
            problemReader = csv.reader(csvfile)
            checkedN = False
            for problem in problemReader:
                if not checkedN:
                    check_for_n(problem)
                    checkedN = True
                #the value at problem[1] is the count of 'OK'
                pk = pass_at_k(200, int(problem[1]), k)
                #write out pass-at-k per problem to file
                f.write(f'{problem[0]},{pk}\n')
                total += pk
                numTests += 1
        csvfile.close()
    f.close()

    #what rounding do we want? Sets up basic elements
    overall = open(f"../model_results/all-pass-at-{k}.csv", 'a') 
    #we round the total sum of all pass at k values to three digits
    overall.write(f'{lang},{partsOfModel[0]},{partsOfModel[1]},{partsOfModel[2]},{round(total,3)},{numTests},{total/numTests}\n')
    overall.close()

def check_for_n(problem):
    '''
    check that n is what we think it is - checks problem 0 (200)
    '''
    if not sum([int(problem[1]), int(problem[2]), int(problem[3])]) == 200:
        print('BIG ISSUE, N IS INCORRECT')
        sys.exit(1)

if __name__ == "__main__":
    main()
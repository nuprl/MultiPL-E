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
    #TODO: there is a better way to do this, but a
    fileName = str(rfile)
    removePrefix = fileName[fileName.rfind('/')+1:]
    lang = removePrefix[:removePrefix.find('-')]
    model = removePrefix[removePrefix.find('-')+1:-12]

    total = 0
    numTests = 0

    with open(f"../model_results/{lang}-{model}-pass-at-{k}.csv", 'w') as f:
        with open(rfile) as csvfile:
            problemReader = csv.reader(csvfile)
            for problem in problemReader:
                pk = pass_at_k(200, int(problem[1]), k)

                #write out pass-at-k per problem to file
                f.write(f'{problem[0]},{pk}\n')
                total += pk
                numTests += 1
        csvfile.close()
    f.close()

    #what rounding do we want? Sets up basic elements
    overall = open(f"../model_results/all-pass-at-{k}.csv", 'a') 
    overall.write(f'{lang},{model},{round(total,3)},{numTests},{round(round(total,3)/numTests, 3)*100}%\n')
    overall.close()

if __name__ == "__main__":
    main()
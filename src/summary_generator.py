'''
Written by Molly Q Feldman, based on code from Arjun Guha 

Given a *.results.yaml file, calculates the summary statistics for model success.
'''
import argparse
import sys
from pathlib import Path
from problem_yaml import TestResults

def main(printToShell=False, writeToFile=True):
    '''
    The goal of this problem is to generate summary statistics after creating the 
    *.results.yaml files for each model run.

    The flags in the arguments to main print the results to the shell (if you're too curious to wait)
    and determine whether the results should be written to a .csv file 
    '''

    args = argparse.ArgumentParser()
    args.add_argument(
        "--dir", type=str, required=True, help="Directory with result YAMLs"
    )
    args = args.parse_args()

    dir = Path(args.dir)
    if not dir.exists():
        print("Directory does not exist: {}".format(dir))
        sys.exit(1)

    #keep track of overall success 
    overallOK = 0

    model = str(dir)[str(dir).rfind("/"):]
    results_file = Path("../model_results/" + model + "-summary.csv").resolve()

    try: 
        _ = open(results_file, "x") #try to create the new file
    except:
        # could keep track & check correct number of tests, but that varies atm 
        with open(results_file, "r") as rf:
            print('CAUTION: You probably have already run this script!')
            rf.close()
            sys.exit(1)

    assert len(sorted(dir.glob("*.results.yaml"))) != 0, 'NOTE: results.yaml has not been generated.'

    for problem_yaml_path in sorted(dir.glob("*.results.yaml")):
        with problem_yaml_path.open() as f:
            testResults = TestResults.load(f)
            #TODO (molly): these need to factor out "OtherError" for different types for error analysis stage
            counts = {"OK": 0, "OtherError": 0, "Exception": 0}
            results = testResults.results
            for res in results: #res is not a single instance, count it's status
                if res.status == 'OK':
                    counts["OK"] += 1
                elif res.status == 'Exception':
                    counts['Exception'] += 1
                else:
                    counts["OtherError"] += 1
            if printToShell:
                print(f'For the 200 attempts at {testResults.name}, we get the following results:')
                print(f"{counts['OK']} Success, {counts['OtherError']} OtherError, {counts['Exception']} Exception")
            if writeToFile:
                with open(results_file, "a") as wrf:
                    assert sum(counts.values()) == 200, f'{testResults.name} only has {sum(counts.values())} completions'
                    countString = f"{testResults.name},{counts['OK']},{counts['OtherError']},{counts['Exception']}\n"
                    wrf.write(countString)
        if counts["OK"] > 0:
            overallOK += 1
        f.close()
        wrf.close()

    if printToShell:
        print(f'For {dir}, we get {overallOK} correct.')
        
if __name__ == "__main__":
    main()
            
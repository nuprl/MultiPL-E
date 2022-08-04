'''
Run to get all pass@k results - caution will add the same entry as already exists! 

written by Molly Feldman, based on code by Arjun Guha 
'''
from summary_generator import makeSummary
from calculate_all_pass import evaluate_functional_correctness
from pathlib import Path
from csv import reader

#TODO: do for all languages or necessary subset - right now this is a good test set 

LANG = ['rkt']#,'d']#[ "py", "sh","cs","cpp","d","go","java","js", "jl", "lua", "pl", "php", "r", "rkt", "rb", "rs","scala","swift","ts",]
MODEL = [ "incoder", "davinci" ]
TEMP = [ "0.8", "0.2", ]
DOCSTRINGS = [ "keep", "remove", "reworded" ] #original keep 
TERMS = ['keep']#[ "keep", "transform" ]

def checkPassResults(lang,model,temp,docstrings,term):
    passOne = Path('../model_results/all-pass-at-1.csv')
    with open(passOne) as csvfile:
                values = reader(csvfile)
                for v in values:
                    if v[0] == lang and v[1] == model and v[2] == temp and v[3] == docstrings and v[3] == term:
                        return True
    return False

def main():
    print('get ready to wait....')
    for lang in LANG:
            for model in MODEL:
                for temp in TEMP:
                    for docstrings in DOCSTRINGS:
                        for term in TERMS:
                            print()
                            findResults = Path('../experiments/'+lang+"-"+model+"-"+temp+"-"+docstrings+"/")
                            #if there is already an entry, stop and continue! 
                            exists = checkPassResults(lang,model,temp,docstrings,term)
                            if exists:
                                print(f'results exist for {findResults} already in all-pass-at-1 - move on.')
                                continue 
                            #TODO: add term here when file names are complete
                            print(f'making summary for{findResults}')
                            result = makeSummary(findResults)
                            if result: #we succeeded in a summary, either existing or created now
                                summary = Path('../model_results/'+lang+"-"+model+"-"+temp+'-'+docstrings+'-'+term+"-summary.csv")
                                print(f'adding results to pass at k for {summary}')
                                evaluate_functional_correctness(summary)         
if __name__ == "__main__":                  
    main()
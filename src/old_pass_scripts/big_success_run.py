'''
Run to get all pass@k results for provided combinations.

CAUTION: may produce output regardless of completion situation
'''
from summary_generator import makeSummary
from calculate_all_pass import evaluate_functional_correctness
from pathlib import Path
from csv import reader

LANG = ["py","ts", "js", "java", "d", "rs", "jl", "sh", "cs", \
          "go", "lua", "pl", "php", "rb",  "scala", "swift", "r", "rkt", 'cpp']
MODEL = ["davinci", "incoder"]
TEMP = [ "0.2", "0.8"] 

ENDINGMAP = {'reworded': ['transform', 'transform'], 'keep': ['keep', 'keep'], \
                'remove': ['remove', 'keep'], 'transform': ['transform', 'keep']}

def checkPassResults(lang,model,temp,docstrings,term):
    passOne = Path('../model_results/all-pass-at-1-eval-run.csv')
    with open(passOne) as csvfile:
                values = reader(csvfile)
                for v in values:
                    if v[0] == lang and v[1] == model and v[2] == temp and v[3] == docstrings and v[4] == term:
                        return True
    return False

def main():
    print('get ready to wait....')
    for lang in LANG:
            for model in MODEL:
                for temp in TEMP:
                    for ending in ENDINGMAP.keys():
                        findResults = Path('../experiments/'+lang+"-"+model+"-"+temp+"-"+ending+"/")
                        print()
                        doc, term = ENDINGMAP[ending][0], ENDINGMAP[ending][1]
                        #if there is already an entry, stop and continue! 
                        exists = checkPassResults(lang,model,temp,doc,term)
                        if exists:
                            print(f'results exist for {findResults} already in all-pass-at-1 - move on.')
                            continue 
                        #TODO: add term here when file names are complete
                        print(f'making summary for{findResults}')
                        result = makeSummary(findResults,lang,model,temp,doc,term)
                        if result: #we succeeded in a summary, either existing or created now
                            summary = Path('../model_results/'+lang+"-"+model+"-"+temp+'-'+doc+'-'+term+"-summary.csv")
                            print(f'adding results to pass at k for {summary}')
                            evaluate_functional_correctness(summary,lang,model,temp,doc,term)         
if __name__ == "__main__":                  
    main()
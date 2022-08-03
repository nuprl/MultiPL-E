'''
Run to get all pass@k results - caution will add the same entry as already exists! 

written by Molly Feldman, based on code by Arjun Guha 
'''
from summary_generator import makeSummary
from calculate_all_pass import evaluate_functional_correctness
from pathlib import Path

#TODO: do for all languages or necessary subset - right now this is a good test set 

LANG = ['php',]#[ "py", "sh","cs","cpp","d","go","java","js", "jl", "lua", "pl", "php", "r", "rkt", "rb", "rs","scala","swift","ts",]
MODEL = [ "incoder", "davinci" ]
TEMP = [ "0.8", "0.2", ]
DOCSTRINGS = [ "keep"] # "remove", "transform" ] #original keep 
TERMS = ['keep']#[ "keep", "transform" ]


def main():
    print('get ready to wait....')
    for lang in LANG:
            for model in MODEL:
                for temp in TEMP:
                    for docstrings in DOCSTRINGS:
                        for term in TERMS:
                            print()
                            #TODO: add term here when file names are complete
                            findResults = Path('../experiments/'+lang+"-"+model+"-"+temp+"-"+docstrings+"/")
                            print(f'making summary for{findResults}')
                            result = makeSummary(findResults)
                            if result: #we succeeded in a summary, either existing or created now
                                summary = Path('../model_results/'+lang+"-"+model+"-"+temp+'-'+docstrings+'-'+term+"-summary.csv")
                                print(f'adding results to pass at k for {summary}')
                                evaluate_functional_correctness(summary)         
if __name__ == "__main__":                  
    main()
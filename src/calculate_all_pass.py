'''
Adapted from the evaluation scripts as part of https://github.com/openai/human-eval

Remainder of the processing here written by Molly Q Feldman for the format of the 
translated dataset (some parts adapted from Arjun Guha)

LICENSE FOR PART OF THE ADAPTATION: 
The MIT License

Copyright (c) OpenAI (https://openai.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

'''
from typing import List, Union
import itertools
import argparse
import sys
import csv
from pathlib import Path
import numpy as np

def entry_point(
    k: str = "1,10,100",
):
    """
    Evaluates the functional correctness of generated samples
    Adapted to include the command line argument
    """
    args = argparse.ArgumentParser()
    args.add_argument(
        "--langresults", type=str, required=True, help="CSV file with results"
    )

    args = args.parse_args()

    rfile = Path(args.langresults)
    if not rfile.exists():
        print("Results file does not exist: {}".format(rfile))
        sys.exit(1)
 
    k = list(map(int, k.split(",")))
    results = evaluate_functional_correctness(rfile)
    print(results)

def estimate_pass_at_k(
    num_samples: Union[int, List[int], np.ndarray],
    num_correct: Union[List[int], np.ndarray],
    k: int
) -> np.ndarray:
    """
    Estimates pass@k of each problem and returns them in an array.
    """

    def estimator(n: int, c: int, k: int) -> float:
        """
        Calculates 1 - comb(n - c, k) / comb(n, k).
        """
        if n - c < k:
            return 1.0
        return 1.0 - np.prod(1.0 - k / np.arange(n - c + 1, n + 1))

    if isinstance(num_samples, int):
        num_samples_it = itertools.repeat(num_samples, len(num_correct))
    else:
        assert len(num_samples) == len(num_correct)
        num_samples_it = iter(num_samples)

    return np.array([estimator(int(n), int(c), k) for n, c in zip(num_samples_it, num_correct)])


def evaluate_functional_correctness(
    sample_file: str,
    k: List[int] = [1, 10]#, 100]  
):
    """
    Evaluates the functional correctness of generated samples, and writes
    results to related file 
    """

    #find the necessary parts of the filename
    #example sample_file is lua-davinci-0.2-keep-keep-summary.csv
    fileAsString = str(sample_file)
    terminology = "keep" #TODO: will need to change / adapt to the rename of the results
    partsOfFileName = fileAsString[fileAsString.rfind('/')+1:].split('-')
    lang, model, temp, doctests = partsOfFileName[0], partsOfFileName[1], partsOfFileName[2], partsOfFileName[3]

    for allK in k:
        total, correct = [], []
        minNumComplete = 999999
        with open(sample_file) as csvfile:
            problemReader = csv.reader(csvfile)
            for problem in problemReader:
                #the value at problem[1] is the count of 'OK'
                #numComplete should be 20, sometimes 200, sometimes something else
                numComplete = int(problem[1]) + int(problem[2]) + int(problem[3])
                minNumComplete = min(minNumComplete, numComplete)
                total.append(numComplete) 
                correct.append(int(problem[1]))  
        total = np.array(total)
        correct = np.array(correct)

        if (total >= allK).all():
            pass_at_k = estimate_pass_at_k(total, correct, allK).mean()
            #what rounding do we want? Sets up basic elements
            overall = open(f"../model_results/all-pass-at-{allK}-eval-run.csv", 'a') 
            #we round the total sum of all pass at k values to three digits
            overall.write(f'{lang},{model},{temp},{doctests},{terminology},{minNumComplete},{allK},{len(total)},{pass_at_k}\n')
            overall.close()

    return pass_at_k

if __name__ == "__main__":
    entry_point()

## Tutorial

In this tutorial, we will run a small experiment to evaluate the performance of
OpenAI Codex on C++ with the HumanEval benchmarks. So that you can run it
quickly it quickly on a single machine, we will only fetch 20 completions per
problem. We suggest C++ because you probably already have a C++ compiler on
your machine. But, you can substitute it with any language that we support.
Later, we'll show you how to add support for other languages and evaluate
other models.

*Prerequisites:*

1. You need `g++` installed. On Ubuntu Linux, you can `sudo apt-get install
  build-essential`. On Mac OS X, `g++` is an alias for the Clang compiler, which
   should work as well.

2. You will need Python 3.10 or higher. If your system Python is not Python 3.10,
    we recommend installing it in a [Conda] virtual environment:

    ```
    conda create -n multipl-env python=3.10
    conda activate multipl-env
    ```

3. You will need an OpenAI API key and access to the Codex beta. If you have
   several API keys (e.g., ask your friends!), you'll be able to run this
   tutorial faster!

First, check out the repository in a terminal:

```
git clone [FILL]
```

Now, enter the `src` directory:

```
cd src
```

This directory has several scripts to transform Python benchmarks to several
other languages, test the translated benchmarks, and calculate pass rates.

The first step is to *prepare prompts* for the model. The following command
creates the directory `../tutorial` and places within it several YAML files,
one for each benchmark.

```
python3 prepare_prompts_yaml.py --lang humaneval_to_cpp.py --target-dir ../tutorial
```

If you examine one of these files, you'll see that each file  has a prompt
for the model. The tool has reformatted the Python docstring in the original
program into a C++-style comment, and translated the Python signature into
a C++ signature. Each file also has a block of test cases, translated from
Python to C++. But, these tests will not be shown the model.

The next step is to *generate completions* using the model. In our paper, we
generate 200 completions for each prompt, which can take some time. To speed
up the tutorial, we recommend only generating 20 completions for each prompt.
Create a file called `model_keys.csv` in the `src` directory that looks like
this:

```
Label,Model,Key
My OpenAI Key,,YOUR_OPENAI_KEY
My lab member's OpenAI Key,,THEIR_OPENAI_KEY
My professor's OpenAI Key,,THEIR_OPENAI_KEY_2
OpenAI key of the guy across the hall,,THEIR_OPENAI_KEY_3
```

You certainly need an OpenAI key. But, as this suggestions, having more will
make this go faster.

With this file in place, we can now generate completions:

```
python3 gather_completions.py --dir ../tutorial --max-samples 20 --model davinci --temperature 0.2 --limit-completions 20 
```

With six API keys, this will take less than 5 minutes. If you just have one,
you should grab lunch. You will almost certainly see some warnings about
being rate-limited. These are innocuous. The script is careful to back off.

Once the script completes, you can evaluate the completions using the tests
cases. If you have a *2N* core machine, we recommend using *N* workers:

```
python3 problem_evaluator.py --dir ../tutorial --max-workers N
```

Finally, you can calculate the pass rates:

```
python3 single_experiment_pass_k.py ../tutorial
```

The experiment prints pass rates for k=1, k=10, and k=100. *Ignore the k=10 and
k=100 rates. They are not reliable with just 20 samples.* However, the *k=1*
rate is close to what you'll get with more samples in a full-fledged experiment.

## So you want to add a new language, huh?

Excellent! One of the goals of this work is to ensure that the benchmark set is 
extensible. In trying out the completions above, you may have noticed a number 
of files with prefixes `humaneval_to_` and `eval_` in `src/`. These are the 
only two files required for adding a new language to the benchmark! 

Most of the work (recursive substitution, actually generating the strings, 
etc.) takes place in the `generic_evaluator.py` script. This should work for 
any language that you throw at it, although your mileage may vary.

### Creating humaneval_to_

Let's say we had not included Perl in the set of benchmark languages and 
you want to add it. In a new file `humaneval_to_perl.py` you will need to 
define a class called `Translator`. `Translator` contains numerous methods -
the interface for a generic `Translator` class is provided in `need_to_make_it.py`. 

There are three types of methods for `Translator`: (1) methods that handle 
translating the prompt, (2) methods that handle translating the unit tests, and
(3) methods that handle the value-to-value translation. 

First, let's handle converting the Python prompt to a Perl prompt. This is 
done by the `translate_prompt` method. `translate_prompt` needs to return 
a string (we definitely suggest using a formatted Python string here) that 
contains the Perl prompt and then the Perl function signature. We suggest 
accumulating the prompt into one string as follows: 
```
perl_description = "# " + re.sub(DOCSTRING_LINESTART_RE, "\n# ", description.strip()) + "\n"
```
where `"#"` are Perl single-line comments. `DOCSTRING_LINESTART_RE` identifies the 
first line in the prompt using a regex and then `description` is a string representing 
the rest of the prompt. This process should be pretty simple - just connect them together with 
your comment structure of choice.

The argument `name` to `translate_prompt` takes care of the function name, you 
just need to format the function arguments (argument `args`) and delimiters to complete 
the prompt translation.

Now let's consider the three methods which help translate unit tests:
`test_suite_prefix_lines`, `test_suite_suffix_lines`, and `deep_equality`. 
The prefix and suffix methods return a "wrapper" around the set of generated unit 
tests. In most languages, as is the case in Perl, the prefix defines a function/class 
for testing and the suffix calls that function. This may include calls to your testing library 
of choice (please look at existing `humaneval_to` files for examples!). 
The wrapper in Perl we use is:
```
sub testhumaneval {
   my $candidate = entry_point;
   # Tests go here
}
testhumaneval();
```

Note the argument `entry_point` to `test_suite_prefix_lines`: this is the name 
of the function for each benchmark. In most languages, we either assign that to 
a variable `candidate` (as done in the original HumanEval benchmark) or call 
`entry_point` directly. 

The final unit test function is `deep_equality`, which is where you define how 
to check whether two arguments (`left` and `right`) are structurally equal. In Perl
we do this with `eq_deeply`. (Hint: note that sometimes the order of `left` and 
`right` can be switched in some testing frameworks - try this out to produce 
the best error messages possible!).

Third, let's tackle the value-to-value translation methods. All of them take
a Python value (or some representation of one) as an argument and return a string 
representing that value's equivalent in Perl.

For instance, `gen_dict` defines what dictionaries in Python should map to in
Perl. Our implementation is below; the only work we need to do is use of `=>` i
nstead of `:` to differentiate keys and values in Perl.

```
 def gen_dict(self, keys: List[str], values: List[str]) -> str:
        return "{" + ", ".join(f"{k} => {v}" for k, v in zip(keys, values)) + "}"
```

This step should be quite straightforward for each value and its associated 
method. When there is choice, we used our language knowledge or consulted 
the style guides from the language communities (see the paper Appendix). As we 
mention in the paper, the ease of value-to-value mapping is one of the key aspects of 
this approach. 

There are also smaller elements to `Translator` (stop tokens, file_ext, etc.)
that you will need to populate accordingly. 

If you've successfully gotten to this point: great, you're done and can move 
on to `eval_foo` and testing. If you wanted to add a statically typed 
benchmark - Read on!

#### What about statically typed languages?

Statically typed translations are notably more challenging to implement than the 
Perl example above. Rather than walk you through the steps directly, we provide a 
well-documented version of `humaneval_to_ts.py` for TypeScript as an example. Feel free
to also consult translations for other languages in the benchmark, although your 
mileage may vary. 

### Creating eval_foo

Now that you're done converting Python to your language of choice, we need 
to define how to evaluate the generated programs. As a reminder, one of the 
contributions of this benchmark suite is actually evaluating the generated
code. Let's continue with the idea that we are adding Perl as a new language to our dataset.

In `eval_pl.py` you should define a function, `eval_script`, with the 
following signature and imports:
```
from pathlib import Path
from safe_subprocess import run

def eval_script(path: Path):
```

In the body of `eval_script` you should call `run` with the 
requisite arguments (please refer to it's documentation and your computing architecture
to do this correctly). For our results, we use the following call to `run` for Perl:
```
r = run(["perl", path])
```

You should then determine how to handle what gets assigned to `r`. If you 
look around the eval scripts we provide, there are different granularities for
handling program evaluation. For instance some statically typed errors
handle compilation and runtime errors differently. We recommend, at minimum,
handling success (typically exit code 0), timeouts, syntax errors, 
and exceptions as four subclasses of results. You can do this using 
`try-except` statments or simply with conditionals:

```
   if r.timeout:
        status = "Timeout"
   ... handle other errors ...
    else:
        status = "OK"
```

`eval_script` should return a dictionary of the form below - the scripts above 
rely on this output format to calculate pass@k metrics:

```
return {
        "status": status,
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
      }
```

There is one final step if you want to run the completion
tutorial above for your brand new language. Open `containerized_eval.py` and 
add links to your new language in two places:

1. Add your `eval_pl` as an import statement in the preamble
2. Add your language as a key in the `EVALUATORS` dictionary. There are many 
examples available for you to look at, but the key should (likely) be the 
file extension (i.e. `pl`) and the value should be a tuple of the form
(eval_script function, file extension).

That's it, you're done! Enjoy learning about how NL2Code models work on your 
language of choice and we hope you found this tutorial helpful.
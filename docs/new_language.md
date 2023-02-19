---
layout: default
title: Evaluate a New Programming Language
nav_order: 3
---

# Evaluate a New Programming Language

One of the goals of this work is to ensure that the benchmark set is
extensible. Most of the work (recursive substitution, actually generating the
strings, etc.) takes place in the `generic_evaluator.py` script. This should
work for any language that you throw at it, but some languages will require
more work than others. In addition, you need to write:

1. An evaluator for your new language that goes in [evaluation/src](https://github.com/nuprl/MultiPL-E/tree/main/evaluation/src); and

2. A translator for your new language that goes in [dataset_builder](https://github.com/nuprl/MultiPL-E/tree/main/dataset_builder).

We strongly recommend adapting existing files. If you're
trying to evaluate a new untyped language, we recommend starting with
the JavaScript translator. If you're trying to evaluate a new typed
language, we recommend starting with the TypeScript translator.


### Creating humaneval_to_L

Let's say we had not included Perl in the set of benchmark languages and 
you want to add it. In a new file `humaneval_to_perl.py` you will need to 
define a class called `Translator`. `Translator` contains numerous methods -
the interface for a generic `Translator` class is provided in `base_language_translator.py `. 

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
the style guides from the language communities (see our paper's Appendix). As we 
mention in our paper, the ease of value-to-value mapping is one of the key aspects of 
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

### Creating eval_L

Now that you're done converting Python to your language of choice, you need 
to define how to evaluate the generated programs. As a reminder, one of the 
contributions of this benchmark suite is actually evaluating the generated
code. Let's continue with the idea that you are adding Perl as a new language to our dataset.

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


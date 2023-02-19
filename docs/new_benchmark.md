---
layout: default
title: Add a New Benchmark
nav_order: 3
---

# Add a New Benchmark

**These directions are a little stale. Email a.guha@northeastern.edu if you
need some help. :) **

This is the really easy part. All you need to do is write a Python
program that looks like the following:

```python
def my_function(a: int, b: int, c: int, k: int) -> int:
    """
    Given positive integers a, b, and c, return an integer n > k such that
    (a ** n) + (b ** n) = (c ** n).
    """
    pass
    

### Unit tests below ###
def check(candidate):
    assert candidate(1, 1, 2, 0) == 1
    assert candidate(3, 4, 5, 0) == 2

def test_check():
    check(my_function)
```

You can then put your benchmark in a directory and run through the steps
in the tutorial.

Some things to note:

1. The *unit tests below* line is important, because we look for that in our
   scripts.

2. We also rely on the name `candidate`. This is not fundamental, and we may get
   around to removing it.

3. You can use `from typing import ...` and `import typing`, but you cannot
   have any other code above the function signature.

4. The type annotations are not required, but are necessary to evaluate some
   languages.

5. The assertions must be equalities with simple input and output values,
   as shown above.

6. Finally, note that you do implement the function yourself. You can leave
   the body as `pass`.

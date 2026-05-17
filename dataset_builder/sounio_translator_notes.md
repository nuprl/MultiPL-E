# `humaneval_to_sounio.py` — translator notes

Decisions, edge-cases, and follow-ups for the Sounio MultiPL-E translator.

## Sounio surface used by the translator

Sounio is an [epistemic systems language](https://github.com/Sounio-lang/sounio).
The translator emits the lexical subset that the `souc` 1.0.0-beta.5
type-checker accepts:

| Concept | Sounio syntax emitted |
|---|---|
| Function declaration | `fn name(args) -> ret with Mut, Panic, Div { … }` |
| Immutable binding | `let x = …` |
| Mutable binding | `var x: T = …` |
| Mutable reference | `&!x` |
| Assertion | `assert(expr)` (aborts on failure) |
| Negative literal | `(0 - n)` — Sounio has no unary minus |
| Boolean | `true` / `false` |
| Missing value | `None` (when an `Option`-typed expression demands it) |
| Vector | `vec![…]`, `Vec::<T>::new()` |
| Hash map | `HashMap::from([(k, v), …])`, `HashMap::<K, V>::new()` |
| Tuple | `(a, b, c)` |
| String literal | `String::from("…")` |

The `with Mut, Panic, Div` effect set is the default for a translated
function. It is intentionally generous — most HumanEval problems touch
mutable arrays, do integer division, and may panic on out-of-bounds. The
Sounio type-checker can tighten this down later.

`main` is the test harness; it always carries `with IO, Mut, Panic, Div`
because the harness writes to stdout via the binary's exit code and uses
`assert` (which panics on failure).

## Driver flow

`humaneval_to_sounio.Translator` follows the `LanguageTranslator` ABC in
`base_language_translator.py`, the same way `humaneval_to_rs.Translator`
does. The driver `generic_translator.translate_prompt_and_tests` walks the
Python AST and calls our `gen_*` / `translate_prompt` / `deep_equality` /
`test_suite_*` methods.

## Stop tokens

`stop = ["\n}"]`. Identical reasoning to Rust: the function body ends with
`}` on its own line, and we include the close in `test_suite_prefix_lines`
to guarantee that the prefix is unambiguous.

## Edge cases handled

### 1. Negative integer / float literals

The MultiPL-E `generic_translator` collapses `ast.UnaryOp(USub, Constant(n))`
into a positive literal handed to `gen_literal(-n)`. For Sounio we expand
that back to `(0 - n)`:

```python
if isinstance(c, int) and c < 0:
    return f"(0 - {abs(c)})"
```

Concrete: `assert candidate([-3, 5]) == [-4, -3, 5]` →
`assert(candidate(vec![(0 - 3), 5]) == vec![(0 - 4), (0 - 3), 5])`.

### 2. Empty containers need explicit element types

Sounio (like Rust) cannot type-infer an empty literal in expression
position. The `coerce` helper rewrites `vec![]` and `HashMap::from([])`:

```python
case "vec![]", ast.Subscript(ast.Name("List"), to):
    return f"Vec::<{translate_type(to)}>::new()"
```

### 3. `Optional[T]` arguments take `Some(...)` wrapping at the call site

When an HumanEval test passes a non-`None` value to an `Optional`-typed
parameter, the literal is wrapped in `Some(...)`. The `(Option<_>,
Option<_>)` tuple shape (used by a single benchmark) is also handled.

### 4. `int` literals in `List[float]` context

Sounio's `Vec<f64>` does not coerce integer elements. `vec![1, 2, 3]` is
rewritten to `vec![1.0, 2.0, 3.0]` when the target type is `Vec<f64>`.

### 5. `Union` / implicitly-untyped arguments are rejected

We follow the Rust translator's "blow up" policy: any prompt whose
signature uses `Union`, omits annotations, or uses `Any` raises an
`Exception` and is skipped by `prepare_prompts_for_hfhub`. Translation
ratios for HumanEval (148/161 = 0.92) and MBPP-typed (356/400 = 0.89)
are comparable to Rust and other typed targets.

### 6. Doctest rewriting

`doctests=transform` invokes the Python-AST → Sounio expression pipeline
for every `>>> call` / expected-output pair in the docstring, so the
in-comment examples become valid Sounio expressions. Try the
`HumanEval_8_sum_product` reference for an example.

## Known limitations / follow-ups

* **String methods.** The translator emits `String::from("…")` but does
  not invent helper methods like `.chars().count()`. Whether the LLM's
  body compiles depends on Sounio's stdlib. The Sounio team can stabilize
  these surface methods independently of this translator.
* **`HashSet` literals.** `gen_set` emits `HashSet::from([…])` but Sounio's
  stdlib `HashSet` is not yet exposed in the prelude. Two HumanEval
  problems exercise sets; both currently rely on the LLM-generated body
  importing the type explicitly.
* **`Tuple[Option, Option]` is the only `Optional`-inside-`Tuple` case
  handled.** A second-tier coercion helper would be needed for arbitrary
  nesting; HumanEval does not exercise that.
* **Vector pretty-printing.** Sounio's `Debug` for `Vec<T>` differs from
  Rust's; assertions never round-trip through stringification so this is a
  non-issue for the eval harness.

## Reproducibility

* Translator version: matches the SHA of this file at PR time.
* Sounio compiler pinned in `evaluation/Dockerfile.sounio`:
  `SOUNIO_VERSION=v1.0.0-beta.5`,
  `SOUNIO_BIN_SHA256=3cbea2b475e79737046f8ccf463c07d22cd5fb678fd479a032ee04bd8e19da93`.
* Dataset originals: `datasets/originals/` upstream (unmodified).

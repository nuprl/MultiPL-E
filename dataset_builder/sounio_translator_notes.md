# Sounio translation and runtime contract

This adapter targets the complete hash-pinned Madaros
distribution in `evaluation/Dockerfile.sounio`. It does not rely on Rust
macros, `String::from`, or assumed generic collection types in a prelude.
Historical model results from the old toolchain do not validate this adapter.

## Values and operations

| Python annotation | Emitted representation |
| --- | --- |
| `int` | Immutable signed arbitrary-precision `MPBigint`, always |
| `float` | Native `f64` |
| `bool` | Native `bool` |
| `str` | Heap-backed Unicode code-point string (`MPStr`) |
| `List[T]` | Monomorphic heap-backed list with a stable mutable handle |
| `Tuple[...]` | Arity-qualified, monomorphic record handle |
| `Optional[T]` | Explicit presence tag and typed payload |
| `Dict[K, V]` | Insertion-ordered entries, typed key equality and replacement |
| `Set[T]` | Unique values with typed equality, independent of insertion order |

Helper names are generated structurally, for example `mp_list_bigint_get`,
`mp_list_str_push`, `mp_tuple2_option_bigint_option_bigint_new` and
`mp_dict_str_bigint_set`. Their complete declarations precede the completion
point. Tuple arity is part of type identity, including in nested types.
Unsupported annotations and unhashable dictionary/set element types are
refused explicitly rather than flattened to an unrelated representation.

Literal expressions remain structured until their expected type is known.
Nested tuples/options/containers are converted recursively, not by splitting
or stripping parentheses from emitted source text. Unicode literals are
serialized as code points, including quotes, combining marks and embedded
NUL; they are not interpolated into executable source as unescaped strings.

The common runtime grows storage geometrically. It checks allocation sizes,
allocation results and indices, and does not silently truncate at a fixed
capacity or return zero for an invalid access. List copies are shallow;
ordinary list/dictionary aliases retain the same stable handle after growth.
Strings' public concat/slice operations create new values. The internal
word-level builders are not a memory-safety boundary against arbitrary code.
Storage is process-lifetime arena storage, not a general garbage collector.

Dictionary lookup is linear, not a hash-table performance claim. Float
conversion preserves its native 64-bit representation. Tests establish the
finite cases exercised, not every NaN identity/key corner case.

## Fixed integer-domain policy

Every Python `int` annotation maps to immutable signed `MPBigint`, including
integer leaves in nested containers, dictionary keys, arguments and results.
This is selected from annotations alone, before tests are translated. There
is no `prepare_problem` hook and no inspection of expected test values to
select visible types. Both small and large literals use the same public type.
Large literals are emitted as exact base-1e9 limbs, never rounded through
floating point or wrapped into a native integer.

The API includes comparison, addition, subtraction, multiplication, floor
division and modulo. Division by zero fails explicitly. Division follows
Python's floor convention: `a = b*q + r`, with nonzero `r` having the sign of
`b`. Arithmetic returns fresh values without mutating operands. These are
library calls, not overloaded native operators: arithmetic on `.handle`
is invalid. Finite storage, allocation and process limits still apply.

Native `i64` is reserved for implementation-level lengths, indices, Unicode
code points and limbs. `mp_bigint_to_i64` checks both boundaries and fails
outside the native range; it is not an implicit narrowing path for arithmetic.
`mp_bigint_to_f64` rounds finite values to nearest/ties-even and fails on
overflow. This finite interface does not establish every Python float or
resource-exhaustion behavior. The Bell reference now accepts `MPBigint` as
well as returning it. Native runtime word-storage controls remain explicitly
internal and do not define the public integer ABI.

The previous shared-driver preflight hook has been removed. Fresh model
results must be generated for this contract; results from the earlier
test-literal-specialized prototype are not interchangeable with it.

## Reproducible checks

Run structural tests in the native Python project environment:

```sh
python3 -B -m unittest discover -s dataset_builder -p test_sounio_translation.py -v
python3 -B -m unittest discover -s references -p test_validate_sounio.py -v
```

With `SOUC` pointing to the verified pinned distribution, opt into native
adapter checks and preserve their generated source/results if desired:

```sh
SOUNIO_NATIVE_TESTS=1 python3 -B -m unittest discover -s dataset_builder -p test_sounio_native.py -v
python3 references/generate_sounio.py --output /tmp/sounio-references --native
python3 references/validate.py --root /tmp/sounio-references
```

The reference generator runs original assertions against executable Sounio
bodies, unimplemented stubs and deliberately incorrect but well-typed bodies.
Only the correct bodies should return `OK`; stubs/wrong bodies must fail at
runtime, not merely fail to compile. The structural validator excludes only
the named benchmark function body, preserving all runtime/helper definitions.
Structural comparison alone is not a native execution result.

`mp_str_swapcase` implements version-pinned Unicode 15.0.0 default casing.
It preserves titlecase-only characters, supports one-to-many expansions,
and evaluates Final_Sigma against the original string, skipping case-ignorable
characters before checking cased context. It returns a fresh string, preserves
embedded NUL/surrogates, and performs no normalization or locale tailoring.
The `flip_case` reference uses this API rather than an ASCII-only substitute.

The tables come from the official UnicodeData, SpecialCasing and
DerivedCoreProperties files, emitted by `generate_sounio_unicode.cpp` (C++23).
Regeneration takes a directory containing those three Unicode 15.0.0 files
and `--runtime`; `--oracle` emits native exhaustive single-point checks plus
context fixtures. Building with `-DWITH_ICU` additionally verifies every
mapping/property against an independent ICU Unicode 15.0 implementation.
Fetch those files from `https://www.unicode.org/Public/15.0.0/ucd/`, then
verify them with `sha256sum -c /path/to/dataset_builder/sounio_unicode_data.sha256`
in their download directory before regenerating. The generated source is
inlined in prompts/programs; evaluation needs no ICU or Unicode-data downloads.
Preserve the associated `UNICODE_LICENSE.txt` with redistributed generated
data/programs. Passing exhaustive single-point checks and context fixtures
is not a formal proof over every possible string or future Unicode version.

## Evidence boundaries

Regenerate prompts with the official preparation script and compare record
identities and assertion counts, not just aggregate totals. A higher total
can conceal a lost problem. The current candidate preserves all previously
translated records and adds seven MBPP records; those are translation results,
not model pass rates or proof that every generated harness executes correctly.

Native adapter/reference gates, image construction, execution inside the
exact image, model generation/evaluation, upstream CI and maintainer acceptance
are separate gates. Do not substitute one for another or carry historical
model scores onto the replacement toolchain. Keep the PR draft until the
remaining execution, model-evaluation and review gates are complete.

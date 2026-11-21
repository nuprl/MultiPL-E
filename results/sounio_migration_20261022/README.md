# Sounio toolchain migration: fresh model comparison

This experiment compares the former translator at
`84d61347830d3561eeec856d679a7d4d4e946448` with the migrated adapter. Both
arms run on the replacement, hash-pinned Madaros distribution described in
[the migration guide](../../evaluation/SOUNIO_MIGRATION.md). It is not a
comparison of two compiler releases: the former advertised release is unavailable.

## Method

- Model: `qwen3-coder-next`, accessed through LLM Gateway's OpenAI-compatible
  Chat Completions endpoint, `https://api.llmgateway.io/v1/chat/completions`.
  DSPy uses the routing prefix `openai/qwen3-coder-next`; the gateway receives
  the plain model ID. The pilot reported `embercloud/qwen3-coder-next`.
- This model is an explicitly authorized substitute for the repository's
  inaccessible `openai/boa` alias. It is not an exact Boa reproduction or a
  fixed-weight/provider-pinned benchmark. Provider selection is dynamic.
- One retained completion per problem, temperature 0.2, `top_p` unset,
  maximum output budget 65,536 tokens, no fixed seed. There are 148 HumanEval
  prompts per arm, 356 baseline MBPP prompts and 363 candidate MBPP prompts.
- The repository's `dataset_builder/chat_completions.py` drives generation.
  The scoped Sounio assembly correction is used for **both** arms. It restores
  only an exact immutable prefix and honors the original stop token; it does
  not repair model algorithms or change assertions.
- Sampling began at two concurrent tasks per cohort. The final candidate-only
  resume used eight per cohort, sixteen total. Saved responses were retained.
  The first 86 raw responses were reassembled after the harness defect was
  identified, without new generation. Interrupted logs/manifests are retained;
  complete per-request provider metadata is not available for those phases.
- Automatic library adapter fallbacks/retries and connection smoke tests mean
  that the number of API requests is not the number of retained samples. Model
  responses missing the required completion field are retained as failed
  samples, not rerolled. Transport/unclassified harness errors fail collection.
- The three protocol-invalid samples are candidate
  `HumanEval_123_get_odd_collatz`, `mbpp_430_parabola_directrix` and
  `mbpp_635_heap_sort`. No baseline sample had this failure. Their saved empty
  completions remain in the evaluator input and denominator.
- Generation dependencies: Python 3.12, DSPy 3.0.0b1, LiteLLM 1.106.2,
  datasets 3.6.0. Python is used for the official harness and structural data
  processing, not as the numerical scoring oracle.
- The normal evaluator executes each original test harness with the pinned
  compiler, compile timeout 30 seconds and execution timeout 10 seconds.
  Native evaluation runs on Linux x86-64 in rootless OCI with a read-only
  exported-image filesystem, read-only inputs, private temporary storage,
  explicit private network namespace and result-only writable bind mount.
- Each input must have exactly one result, identical tests and the exact
  assembled program. `OK` requires compilation and execution with exit 0.
- The initial evaluation used four processes, one sequential process per
  cohort. It was resumed with sixteen per-file workers after a sixteen-program
  pilot produced identical programs, tests, verdicts and exit codes. Completed
  results were reused only after exact input/program/test validation; the
  interrupted run is retained. This did not generate new model answers.
- With n=1 and k=1, pass@1 is exactly successful problems / evaluated problems.
  `score.cpp` computes these ratios in C++23 and rejects duplicate problem IDs
  or an `OK` verdict with a nonzero exit code. The numerical Python `pass_k.py`
  was not run; this is an explicit scorer substitution under the author's
  numerical-verification policy, not a claim of running that script.

## Results

| Comparison | Baseline passed | Candidate passed |
|---|---:|---:|
| HumanEval, same 148 IDs | 6/148 | 95/148 |
| MBPP, same 356 IDs | 40/356 | 219/356 |
| Seven additional MBPP IDs | not translated | 4/7 |
| All translated MBPP IDs | 40/356 | 223/363 |

The complete executed summary is `pass-at-1.md`, including exact c/n ratios
and decimal values. Per-problem data are in `verdicts.tsv`, failure categories
in `status-counts.tsv`, and run identities in `run.json`/`SHA256SUMS`.
All 1,015 input/result pairs passed exact program/test correspondence checks.
The independent baseline run produced byte-identical baseline verdict rows.

The paired comparison gains 90 HumanEval successes and loses one; it gains
183 common-MBPP successes and loses four. These five losses were inspected:

| Candidate sample previously passed by baseline | Observed failure |
|---|---|
| `HumanEval_102_choose_num` | Uninitialized binding declaration rejected by the parser |
| `mbpp_116_tuple_to_int` | Wrong algorithm, concatenating internal base-1e9 limbs instead of decimal digits |
| `mbpp_14_find_Volume` | Wrong algorithm, ignoring the height argument |
| `mbpp_267_square_Sum` | Reassignment of an immutable `let` binding |
| `mbpp_577_last_Digit_Factorial` | Rust-style `let mut` rejected by Sounio |

These model programs are unmodified. The complete 511-harness native stub gate
passed independently, and the failing cases above do not identify a lost input
or changed assertion. A one-sample comparison is descriptive, not a statistical
capability ranking. Translation coverage, native reference controls, model
success, upstream CI and maintainer acceptance are separate evidence layers.

## Reproduce the structural input and scoring steps

From `dataset_builder`, for either the baseline revision or current candidate:

```sh
python3 prepare_prompts_for_hfhub.py \
  --lang humaneval_to_sounio.py --original-dataset originals --originals originals \
  --doctests transform --prompt-terminology reworded \
  --output jsonl:/tmp/humaneval-sio.jsonl
python3 prepare_prompts_for_hfhub.py \
  --lang humaneval_to_sounio.py --original-dataset mbpp-typed --originals mbpp-typed \
  --doctests transform --prompt-terminology reworded \
  --output jsonl:/tmp/mbpp-sio.jsonl
```

For both arms use the current chat assembly helper, the generation settings
above and the pinned evaluator. Credentials belong in environment variables,
never in tracked files. Runtime prefixes and original-file metadata paths can
make regenerated input-file hashes differ; compare problem IDs, prompts,
assertions and stop tokens explicitly. The checked-in candidate snapshots
normalize only original-file metadata paths.

For example, from the repository root after securely setting `OPENAI_API_KEY`
to a gateway credential (not a tracked file), generate the candidate HumanEval
arm as follows. Use separate output directories/name overrides for each arm;
repeat with `--root-dataset mbpp` and the MBPP JSONL for that cohort.

```sh
export OPENAI_API_BASE=https://api.llmgateway.io/v1
export OPENAI_BASE_URL="$OPENAI_API_BASE"
python3 dataset_builder/chat_completions.py bench \
  --name openai/qwen3-coder-next --lang sio --name-override candidate \
  --root-dataset humaneval --dataset jsonl:/tmp/humaneval-sio.jsonl \
  --temperature 0.2 --num-concurrent 2 --max-tokens 65536 --max-completions 1
```

For each generated cohort, use the Sounio image from the migration guide:

```sh
podman run --rm --network none \
  -v "$SAMPLES:/inputs:ro" -v "$RESULTS:/outputs:rw" \
  multipl-e-sounio --dir /inputs --output-dir /outputs --max-workers 2
```

The retained run separately validates complete input/result correspondence,
unchanged assertions and exact assembled program strings before exporting
the four TSV columns: cohort, problem ID, native status, native exit code.

To independently recompute the published k=1 summary from the verdict export:

```sh
c++ -std=c++23 -O2 -Wall -Wextra -Werror score.cpp -o /tmp/sounio-score
/tmp/sounio-score verdicts.tsv > /tmp/pass-at-1.md 2> /tmp/status-counts.tsv
diff -u pass-at-1.md /tmp/pass-at-1.md
diff -u status-counts.tsv /tmp/status-counts.tsv
```

## Replay the published native inputs without a model API

`samples.jsonl.xz` contains all retained native inputs, raw completion fields,
original prefixes and tests. It omits private reasoning/adapter-error logs and
assembly bookkeeping, not any native program or assertion. In particular, the
three protocol-invalid samples retain their saved empty completions. The export
and unpacking were round-trip checked against the original sample values.

```sh
python3 -B -m unittest discover -s . -p test_unpack_samples.py -v
python3 unpack_samples.py /tmp/sounio-retained-samples
```

The destination must not already exist. Run the image against each unpacked
cohort as above, or use `--recursive` to preserve cohort subdirectories under
one output directory. No API credential or new model generation is needed.

Full evaluator outputs, private phase logs and the dependency freeze are also
retained in the run receipts. `verdicts.tsv` allows independent C++23 scoring;
the compressed inputs allow independent native re-execution. Neither recreates
an exact request to the dynamically routed model service.

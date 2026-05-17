# Cx-2 acceptance test log

Recorded on the `feature/add-sounio` branch of `agourakis82/MultiPL-E`.

Compiler under test: `souc 1.0.0-beta.5`
SHA256: `3cbea2b475e79737046f8ccf463c07d22cd5fb678fd479a032ee04bd8e19da93`
Dataset: `datasets/originals/` (161 HumanEval), `datasets/mbpp-typed/` (400 MBPP).

| Test | Spec | Result | Evidence |
|------|------|--------|----------|
| T1 | Translator runs end-to-end on HumanEval | **PASS — 148/161 (0.92)** | `prepare_prompts_for_hfhub.py --lang humaneval_to_sounio.py … --output jsonl:prompts/humaneval-sio-reworded.jsonl` → `Translation ratio: 0.92`. |
| T1.5 | Translator runs end-to-end on MBPP-typed | **PASS — 356/400 (0.89)** | Same script, `--originals datasets/mbpp-typed --original-dataset mbpp`. |
| T2 | Eval container builds | **DEFERRED** — pinned binary not yet attached to release `v1.0.0-beta.5` (see `evaluation/Dockerfile.sounio`). Awaits operator. |
| T3 | Container runs a known-good Sounio solution → `OK` | **PASS** (local, outside container) — `eval_script` on minimal `add` returns `{"status": "OK", "exit_code": 0}`. |
| T4 | Container handles a syntax error → `SyntaxError` | **PASS** (local) — `eval_script` on malformed source returns `{"status": "SyntaxError", "exit_code": 1}`. |
| T5 | `python evaluation/main.py --lang sounio --model deepseek-coder-6.7b` produces results JSONL | **DEFERRED** — requires GPU + vLLM completions; tracked as next-session work in `coordination/HANDOFFS.md`. |
| T6 | `references/validate.py` → 20/20 PASS | **PASS — 20/20** — `validate: 20/20 pass`. |

## Local rerun

```bash
# T1 / T1.5 — translation
cd dataset_builder
python3 prepare_prompts_for_hfhub.py \
    --lang humaneval_to_sounio.py \
    --prompt-terminology reworded \
    --doctests transform \
    --originals ../datasets/originals \
    --original-dataset humaneval \
    --output jsonl:../prompts/humaneval-sio-reworded.jsonl
python3 prepare_prompts_for_hfhub.py \
    --lang humaneval_to_sounio.py \
    --prompt-terminology reworded \
    --doctests transform \
    --originals ../datasets/mbpp-typed \
    --original-dataset mbpp \
    --output jsonl:../prompts/mbpp-sio-reworded.jsonl

# T3 / T4 — eval backend (set $SOUC to a local souc-linux-x86_64)
SOUC=/path/to/souc-linux-x86_64 python3 -c "
import sys; sys.path.insert(0, 'evaluation/src')
from eval_sounio import eval_script
from pathlib import Path
print(eval_script(Path('test_ok.sio')))   # → status: OK
print(eval_script(Path('test_bad.sio')))  # → status: SyntaxError
"

# T6 — reference diff
python3 references/validate.py    # → 20/20 pass
```

## Open follow-ups

1. **Upload `souc-linux-x86_64` to GitHub release `v1.0.0-beta.5`.** The
   Dockerfile pins a SHA256 (`3cbea2b4…`) but the asset is not yet
   attached. Reviewers can reproduce locally via `SOUC=…` until that lands.
2. **Run baseline pass@1/pass@10 against `deepseek-ai/deepseek-coder-6.7b-base`.**
   Requires a single GPU node + vLLM + the eval container. Tracked for the
   follow-up PR; the current PR exists to land the *translator + harness*
   so the baseline numbers can be added incrementally without re-reviewing
   the translator.

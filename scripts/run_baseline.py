#!/usr/bin/env python3
"""Generate completions for Sounio HumanEval prompts and grade them.

Loads `deepseek-ai/deepseek-coder-6.7b-base` (or any HF causal-LM via
`--model`), iterates over the prompts in `prompts/humaneval-sio-reworded.jsonl`,
greedy-decodes up to `--max-new-tokens` tokens (truncating at `\\n}` per the
translator's stop-token contract), then assembles a full Sounio source file
(`prompt + completion + tests`), invokes `eval_sounio.eval_script` on it,
and records the verdict.

Computes pass@1 (and pass@k when n > 1) per the unbiased Chen et al. (2021)
estimator.  Writes per-problem rows to `results/sounio_<model>.jsonl` plus a
summary line.

Usage:
    HF_HOME=/path/to/cache SOUC=/path/to/souc python3 scripts/run_baseline.py \\
        --model deepseek-ai/deepseek-coder-6.7b-base \\
        --n 1 \\
        --max-new-tokens 384 \\
        --temperature 0.0 \\
        --out results/sounio_deepseek-coder-6.7b.jsonl
"""

from __future__ import annotations

import argparse
import json
import math
import os
import sys
import time
from pathlib import Path

import torch
from transformers import AutoModelForCausalLM, AutoTokenizer

REPO = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(REPO / "evaluation" / "src"))
from eval_sounio import eval_script  # noqa: E402

STOP_TOKENS = ["\n}"]


def truncate_at_stop(text: str) -> str:
    cut = len(text)
    for s in STOP_TOKENS:
        i = text.find(s)
        if i >= 0:
            cut = min(cut, i)
    return text[:cut]


def chen_pass_k(n: int, c: int, k: int) -> float:
    """Unbiased pass@k from Chen et al. (2021)."""
    if n - c < k:
        return 1.0
    return 1.0 - math.comb(n - c, k) / math.comb(n, k)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--model", default="deepseek-ai/deepseek-coder-6.7b-base")
    ap.add_argument("--prompts", default=str(REPO / "prompts" / "humaneval-sio-reworded.jsonl"))
    ap.add_argument("--out", required=True)
    ap.add_argument("--n", type=int, default=1, help="completions per problem")
    ap.add_argument("--max-new-tokens", type=int, default=384)
    ap.add_argument("--temperature", type=float, default=0.0)
    ap.add_argument("--top-p", type=float, default=0.95)
    ap.add_argument("--limit", type=int, default=0, help="0 = all problems")
    ap.add_argument("--quant", choices=["none", "int8", "int4"], default="none")
    args = ap.parse_args()

    print(f"[load] tokenizer + model from {args.model}", flush=True)
    tok = AutoTokenizer.from_pretrained(args.model)
    if tok.pad_token_id is None:
        tok.pad_token_id = tok.eos_token_id
    kwargs = {"device_map": "auto", "low_cpu_mem_usage": True}
    if args.quant == "int4":
        from transformers import BitsAndBytesConfig
        kwargs["quantization_config"] = BitsAndBytesConfig(
            load_in_4bit=True,
            bnb_4bit_compute_dtype=torch.bfloat16,
            bnb_4bit_quant_type="nf4",
        )
    elif args.quant == "int8":
        from transformers import BitsAndBytesConfig
        kwargs["quantization_config"] = BitsAndBytesConfig(load_in_8bit=True)
    else:
        kwargs["torch_dtype"] = torch.bfloat16
    model = AutoModelForCausalLM.from_pretrained(args.model, **kwargs)
    model.eval()

    problems = []
    with open(args.prompts) as f:
        for line in f:
            problems.append(json.loads(line))
    if args.limit > 0:
        problems = problems[: args.limit]

    do_sample = args.temperature > 0.0
    Path(args.out).parent.mkdir(parents=True, exist_ok=True)
    fout = open(args.out, "w")

    per_problem_passes = []
    per_problem_total = []
    summary = {"model": args.model, "n_problems": len(problems), "samples_per": args.n}
    t0 = time.time()

    for i, prob in enumerate(problems):
        prompt = prob["prompt"]
        tests = prob["tests"]
        ids = tok(prompt, return_tensors="pt").to("cuda")
        c = 0
        completions = []
        for s in range(args.n):
            with torch.inference_mode():
                out = model.generate(
                    **ids,
                    max_new_tokens=args.max_new_tokens,
                    do_sample=do_sample,
                    temperature=args.temperature if do_sample else 1.0,
                    top_p=args.top_p if do_sample else 1.0,
                    pad_token_id=tok.pad_token_id,
                )
            gen = tok.decode(out[0, ids["input_ids"].shape[1]:], skip_special_tokens=True)
            gen = truncate_at_stop(gen)
            src = prompt + gen + "\n" + tests
            tmp = Path(f"/tmp/sounio_baseline_{i}_{s}.sio")
            tmp.write_text(src)
            verdict = eval_script(tmp)
            tmp.unlink(missing_ok=True)
            completions.append({"completion": gen, "verdict": verdict["status"]})
            if verdict["status"] == "OK":
                c += 1

        per_problem_passes.append(c)
        per_problem_total.append(args.n)
        row = {
            "name": prob["name"],
            "n": args.n,
            "c": c,
            "completions": completions,
        }
        fout.write(json.dumps(row) + "\n")
        fout.flush()
        elapsed = time.time() - t0
        print(
            f"[{i+1}/{len(problems)}] {prob['name']:50s} c={c}/{args.n}  "
            f"elapsed={elapsed:.0f}s",
            flush=True,
        )

    fout.close()

    n = sum(per_problem_total)
    total_passes = sum(per_problem_passes)
    summary["total_completions"] = n
    summary["total_passes"] = total_passes
    summary["raw_pass@1"] = total_passes / n if n else 0.0
    if args.n >= 1:
        avgs = [chen_pass_k(t, p, 1) for t, p in zip(per_problem_total, per_problem_passes)]
        summary["pass@1"] = sum(avgs) / len(avgs)
    if args.n >= 10:
        avgs = [chen_pass_k(t, p, 10) for t, p in zip(per_problem_total, per_problem_passes)]
        summary["pass@10"] = sum(avgs) / len(avgs)

    summary_path = Path(args.out).with_suffix(".summary.json")
    summary_path.write_text(json.dumps(summary, indent=2))
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()

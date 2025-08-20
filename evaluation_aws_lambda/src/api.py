"""Minimal FastAPI server for evaluating completions.

This API exposes one POST endpoint ``/evaluate`` which accepts a JSON
payload describing the completions to execute. The expected schema is the
same as the files consumed by :mod:`evaluation.src.main`, namely::

    {
        "name": "HumanEval_53_add",           # optional
        "language": "python",
        "prompt": "...",
        "tests": "...",
        "completions": ["completion1", "completion2"],
        "stop_tokens": ["\n"]
    }

The response mirrors the structure produced by ``evaluation.src.main`` where
``completions`` is replaced with ``results`` containing execution metadata for
each completion.
"""

from fastapi import FastAPI
from pydantic import BaseModel
import time
import os
import asyncio
from concurrent.futures import ThreadPoolExecutor
from containerized_eval import eval_string_script
import traceback

# ==== Lambda-specific settings (configurable via environment variables) ====
# A single Lambda execution environment has limited vCPU, so avoid excessive threads/semaphores.
MAX_WORKERS = int(os.getenv("MAX_WORKERS", "4"))
CONCURRENCY = int(os.getenv("CONCURRENCY", "16"))
EVAL_TIMEOUT = float(os.getenv("EVAL_TIMEOUT", "30"))

class EvalRequest(BaseModel):
    """Request model matching ``evaluation.src.main`` input files."""

    language: str
    prompt: str
    tests: str
    completions: list[str]
    name: str | None = None
    stop_tokens: list[str] | None = None

    class Config:
        extra = "allow"

# Thread pool and semaphore to control concurrency within a single Lambda instance
executor = ThreadPoolExecutor(max_workers=MAX_WORKERS)
semaphore = asyncio.Semaphore(CONCURRENCY)

app = FastAPI()

@app.get("/healthz")
async def healthz():
    """Health check endpoint."""
    return {"status": "ok"}

@app.post("/evaluate")
async def evaluate(req: EvalRequest):
    """Execute the provided completions and return the results.

    Parameters
    ----------
    req: EvalRequest
        JSON payload describing a set of completions in the same format as used
        by :mod:`evaluation.src.main`.

    Returns
    -------
    dict
        JSON object with execution metadata including ``stdout``,
        ``stderr``, ``exit_code``, ``status`` and ``timestamp``.
    """
    loop = asyncio.get_running_loop()
    results = []

    # Note: stop_tokens is passed through as-is if used by containerized_eval
    for completion in req.completions:
        # Construct the program: prompt + completion + tests
        program = req.prompt + completion + "\n" + req.tests
        try:
            async with semaphore:
                result = await asyncio.wait_for(
                    loop.run_in_executor(
                        executor, eval_string_script, req.language, program
                    ),
                    timeout=EVAL_TIMEOUT,
                )
        except asyncio.TimeoutError:
            result = {
                "program": program,
                "stdout": "",
                "stderr": "Timeout",
                "exit_code": -1,
                "status": "Timeout",
            }
        except Exception:
            result = {
                "program": program,
                "stdout": "",
                "stderr": traceback.format_exc()[:8000],
                "exit_code": -1,
                "status": "Exception",
            }
        # Add timestamp
        result["timestamp"] = int(time.time())
        results.append(result)

    # Prepare the response (replace completions with results)
    response = req.dict()
    response.pop("completions", None)
    response["results"] = results
    return response

# ==== Single-line addition for Lambda (RIC + Mangum) ====
from mangum import Mangum
handler = Mangum(app)

# ==== Local execution (not used in Lambda production) ====
if __name__ == "__main__":
    import uvicorn
    # In local testing, workers>1 is possible, but in Lambda concurrency is achieved by scaling instances, so 1 is typical
    uvicorn.run(
        "api:app",
        host="0.0.0.0",
        port=int(os.getenv("PORT", "9090")),
        workers=int(os.getenv("UVICORN_WORKERS", "1")),
        limit_concurrency=CONCURRENCY,
    )

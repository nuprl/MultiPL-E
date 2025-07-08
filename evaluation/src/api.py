"""Minimal FastAPI server for evaluating completions.

This API exposes one POST endpoint ``/evaluate`` which accepts a JSON
payload describing the completions to execute.  The expected schema is the
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
from containerized_eval import eval_string_script
import asyncio
from concurrent.futures import ThreadPoolExecutor

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

executor = ThreadPoolExecutor(max_workers=100)
semaphore = asyncio.Semaphore(100)

app = FastAPI()

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
    for completion in req.completions:
        program = req.prompt + completion + "\n" + req.tests
        try:
            async with semaphore:
                result = await asyncio.wait_for(
                    loop.run_in_executor(executor, eval_string_script, req.language, program),
                    timeout=30,
                )
        except asyncio.TimeoutError:
            result = {
                "program": program,
                "stdout": "",
                "stderr": "Timeout",
                "exit_code": -1,
                "status": "Timeout",
            }
        result["timestamp"] = int(time.time())
        results.append(result)

    response = req.dict()
    response.pop("completions", None)
    response["results"] = results
    return response

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(
        "api:app",
        host="0.0.0.0",
        port=9090,
        workers=4,
        limit_concurrency=100,
    )

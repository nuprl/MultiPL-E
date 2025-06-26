"""Minimal FastAPI server for evaluating a single completion.

This API exposes one POST endpoint `/evaluate` which accepts a JSON body
describing the program to execute.  The input fields are:

* ``language``  - name of the programming language (e.g. ``"python"``)
* ``prompt``    - preamble string containing helper code
* ``completion``- the completion to evaluate
* ``tests``     - test code appended after the completion

The response is a JSON object containing the execution result with keys like
``stdout`` and ``stderr`` along with a ``timestamp`` field.
"""

from fastapi import FastAPI
from pydantic import BaseModel
import time
from containerized_eval import eval_string_script
import asyncio
from concurrent.futures import ThreadPoolExecutor

class EvalRequest(BaseModel):
    language: str
    prompt: str
    completion: str
    tests: str

executor = ThreadPoolExecutor(max_workers=100)
semaphore = asyncio.Semaphore(100)

app = FastAPI()

@app.post("/evaluate")
async def evaluate(req: EvalRequest):
    """Execute the provided program and return the result.

    Parameters
    ----------
    req: EvalRequest
        JSON payload with ``language``, ``prompt``, ``completion`` and ``tests``.

    Returns
    -------
    dict
        JSON object with execution metadata including ``stdout``,
        ``stderr``, ``exit_code``, ``status`` and ``timestamp``.
    """
    program = req.prompt + req.completion + "\n" + req.tests
    loop = asyncio.get_running_loop()
    try:
        async with semaphore:
            result = await asyncio.wait_for(
                loop.run_in_executor(executor, eval_string_script, req.language, program),
                timeout=30,
            )
    except asyncio.TimeoutError:
        return {
            "program": program,
            "stdout": "",
            "stderr": "Timeout",
            "exit_code": -1,
            "status": "Timeout",
            "timestamp": int(time.time()),
        }
    result["timestamp"] = int(time.time())
    return result

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(
        "api:app",
        host="0.0.0.0",
        port=9090,
        workers=4,
        limit_concurrency=100,
    )

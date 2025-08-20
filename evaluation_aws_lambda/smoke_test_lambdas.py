"""
Smoke-test all deployed Lambda evaluators by sending a minimal program
that should succeed (or at least execute) and report the status.

It loads base URLs from `lang2url.json` and POSTs to `<url>/evaluate` with
the payload expected by `src/api.py`:

{
  "language": <lang>,
  "prompt": "",
  "tests": "",
  "completions": [<entire_program_string>]
}

Usage:
  python smoke_test_lambdas.py              # test all
  python smoke_test_lambdas.py python rust  # test specific languages

Notes:
- Some languages (e.g., Java/Scala) expect a specific entry class/object name
  as per eval_* implementation. This script uses those conventions (e.g.,
  Java/Scala use `Problem`).
- Go uses the special language key `go_test.go` which produces a `_test.go` file.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Dict, Tuple, Optional

import requests
from urllib.parse import urljoin


def load_lang_urls(path: Path) -> Dict[str, str]:
    obj = json.loads(path.read_text())
    return obj.get("urls", {})


def program_for(lang: str) -> str:
    # Entire programs that should compile/run and print or pass trivially.
    # For most languages we just print "OK".
    m: Dict[str, str] = {
        # Scripting
        "python": 'print("OK")\n',
        "javascript": 'console.log("OK")\n',
        "ts": 'console.log("OK")\n',
        "ruby": 'puts "OK"\n',
        "lua": 'print("OK")\n',
        "luau": 'print("OK")\n',
        "php": '<?php echo "OK\n";\n',
        "r": 'cat("OK\n")\n',
        "racket": '#lang racket\n(displayln "OK")\n',
        "sh": '#!/usr/bin/env bash\necho OK\n',
        "pl": 'print "OK\\n";\n',  # Perl
        # Clojure: ensure stdout contains "\n0 failures, 0 errors.\n"
        # Emit an empty line before the summary to match evaluator substring.
        "clj": '(println)\n(println "0 failures, 0 errors.")\n',

        # Compiled
        "cpp": '#include <iostream>\nint main(){ std::cout << "OK\\n"; return 0; }\n',
        "rust": 'fn main(){ println!("OK"); }\n',
        "swift": 'print("OK")\n',
        "ocaml": 'print_endline "OK"\n',
        "fs": 'printfn "OK"\n',
        "hs": 'main = putStrLn "OK"\n',
        "scala": 'object Problem { def main(args: Array[String]) = println("OK") }\n',
        # Non-public class to avoid filename constraint under current Lambda evaluator
        "java": 'class Problem { public static void main(String[] args){ System.out.println("OK"); } }\n',
        "cs": 'using System; public static class Program { public static void Main(){ Console.WriteLine("OK"); } }\n',
        "dlang": 'import std.stdio; void main(){ writeln("OK"); }\n',
        "dart": 'void main(){ print("OK"); }\n',
        "julia": 'println("OK")\n',
        "elixir": 'IO.puts("OK")\n',
        # Ada must define procedure main so gnatchop emits main.adb for our evaluator
        "ada": 'with Ada.Text_IO; use Ada.Text_IO;\nprocedure main is\nbegin\n  Put_Line("OK");\nend main;\n',

        # Proof/verification oriented
        # Coq (key is `v` here, evaluator compiles with `coqc`)
        "v": 'Theorem t : True. Proof. trivial. Qed.\n',
        # Lean: keep it as trivial proposition
        # Note: Depending on Lean version, capitalized True may be required (Lean 4).
        # If using Lean 3, `true`/`trivial` may be needed.
        "lean": 'theorem t : True := True.intro\n',
        # Dafny
        "dfy": 'method Main() { print "OK\\n"; }\n',

        # Go (tests only)
        "go_test.go": 'package main\nimport "testing"\nfunc TestOK(t *testing.T) {}\n',
    }

    # Fallbacks for near-synonyms
    if lang == "js":
        return m["javascript"]

    code = m.get(lang)
    if code is None:
        # As a conservative default, try a generic print program in common syntaxes.
        # Many evaluators will just fail gracefully; the goal is smoke-checking the endpoint.
        return 'print("OK")\n'
    return code


def tests_for(lang: str) -> str | None:
    # Additional code appended as `tests` to validate concatenation behavior.
    # Only defined for languages where simply appending another print is valid.
    m: Dict[str, str] = {
        "python": 'print("T")\n',
        "javascript": 'console.log("T")\n',
        "ts": 'console.log("T")\n',
        "ruby": 'puts "T"\n',
        "lua": 'print("T")\n',
        "luau": 'print("T")\n',
        "php": 'echo "T\\n";\n',
        "r": 'cat("T\\n")\n',
        # For Racket, do NOT emit #lang again; append only expression
        "racket": '(displayln "T")\n',
        "sh": '#!/usr/bin/env bash\necho T\n',
        "pl": 'print "T\\n";\n',
        "julia": 'println("T")\n',
        "elixir": 'IO.puts("T")\n',
        # Clojure OK checker relies on specific summary line
        "clj": '(println)\n(println "0 failures, 0 errors.")\n',
        # Dafny verification: keep tests empty (verification summary is enough)
        "dfy": '',
    }
    return m.get(lang)


def make_payload(lang: str, tests: str = "", prompt: str = "") -> dict:
    return {
        "language": lang,
        "prompt": prompt,
        "tests": tests,
        # Send the entire program as a single completion
        "completions": [program_for(lang)],
        "name": f"smoke_{lang}",
        "stop_tokens": ["\n"],
    }


def test_one(
    lang: str,
    base_url: str,
    timeout: float = 30.0,
    tests: str = "",
    case: str | None = None,
    prompt: str = "",
    completion_override: Optional[str] = None,
) -> dict:
    url = urljoin(base_url if base_url.endswith("/") else base_url + "/", "evaluate")
    payload = make_payload(lang, tests=tests, prompt=prompt)
    if completion_override is not None:
        payload["completions"] = [completion_override]
    try:
        resp = requests.post(url, json=payload, timeout=timeout)
        status = resp.status_code
        data = None
        err = None
        try:
            data = resp.json()
        except Exception:
            err = resp.text
        return {
            "language": f"{lang}{'+' + case if case else ''}",
            "url": base_url,
            "http_status": status,
            "ok": status == 200,
            "result_status": (data.get("results") or [{}])[0].get("status") if isinstance(data, dict) else None,
            "stderr": (data.get("results") or [{}])[0].get("stderr") if isinstance(data, dict) else err,
        }
    except requests.RequestException as e:
        return {
            "language": f"{lang}{'+' + case if case else ''}",
            "url": base_url,
            "http_status": None,
            "ok": False,
            "result_status": None,
            "stderr": str(e),
        }


def triad_for(lang: str) -> Optional[Tuple[str, str, str]]:
    # Returns (prompt, completion_fragment, tests) for structured languages.
    m: Dict[str, Tuple[str, str, str]] = {
        "python": (
            "",
            "def add(x, y):\n    return x + y\n",
            "if __name__ == \"__main__\":\n    assert add(2,3) == 5\n    print(\"OK\")\n",
        ),
        "javascript": (
            "",
            "function add(x, y) { return x + y; }\n",
            "const assert = require('node:assert');\nassert.strictEqual(add(2,3), 5);\nconsole.log('OK');\n",
        ),
        "ts": (
            "",
            "function add(x: number, y: number): number { return x + y; }\n",
            "console.assert(add(2,3) === 5);\nconsole.log('OK');\n",
        ),
        "ruby": (
            "",
            "def add(x, y)\n  x + y\nend\n",
            "require 'test/unit'\nclass TestHumanEval < Test::Unit::TestCase\n  def test_add\n    assert_equal 5, add(2,3)\n  end\nend\n",
        ),
        "lua": (
            "",
            "function add(x, y) return x + y end\n",
            "assert(add(2,3) == 5)\nprint('OK')\n",
        ),
        "luau": (
            "",
            "function add(x, y) return x + y end\n",
            "assert(add(2,3) == 5)\nprint('OK')\n",
        ),
        "php": (
            "",
            "<?php\nfunction add($x, $y) { return $x + $y; }\n",
            "if (add(2, 3) === 5) { echo \"OK\\n\"; } else { echo \"FAIL\\n\"; }\n",
        ),
        "r": (
            "",
            "add <- function(x, y) x + y\n",
            "stopifnot(add(2,3) == 5)\ncat(\"OK\\n\")\n",
        ),
        "racket": (
            "#lang racket\n(define (add x y) (+ x y))\n",
            "",
            "(require rackunit)\n(check-equal? (add 2 3) 5)\n(displayln \"OK\")\n",
        ),
        "sh": (
            "",
            "add(){ echo $(($1 + $2)); }\n",
            "if [ \"$(add 2 3)\" -eq 5 ]; then echo OK; else echo FAIL; fi\n",
        ),
        "pl": (
            "",
            "sub add { return $_[0] + $_[1]; }\n",
            "if (add(2,3) != 5) { die \"FAIL\\n\" } else { print \"OK\\n\" }\n",
        ),
        "julia": (
            "",
            "add(x,y) = x + y\n",
            "@assert add(2,3) == 5\nprintln(\"OK\")\n",
        ),
        "elixir": (
            "",
            "defmodule M do\n  def add(x,y), do: x + y\nend\n",
            "if M.add(2,3) != 5 do\n  raise \"FAIL\"\nelse\n  IO.puts(\"OK\")\nend\n",
        ),
        "clj": (
            "",
            "(defn add [x y] (+ x y))\n",
            "(println)\n(println \"0 failures, 0 errors.\")\n",
        ),
        "cpp": (
            "#include <assert.h>\n#include <stdio.h>\nlong add(long x, long y) {\n",
            "    return x + y;",
            "}\nint main(){\n    long (*candidate)(long,long) = add;\n    assert(candidate(2,3) == 5);\n    puts(\"OK\");\n}\n",
        ),
        "rust": (
            "fn add(x: isize, y: isize) -> isize {\n",
            "    x + y",
            "}\nfn main() {\n    assert_eq!(add(2,3), 5);\n    println!(\"OK\");\n}\n",
        ),
        "java": (
            "class Problem {\n    public static long add(long x, long y) {\n",
            "        return x + y;",
            "    }\n    public static void main(String[] args) {\n        assert add(2L, 3L) == 5L;\n        System.out.println(\"OK\");\n    }\n}\n",
        ),
        "scala": (
            "object Problem {\n  def add(x: Long, y: Long): Long = {\n",
            "    x + y",
            "  }\n  def main(args: Array[String]) = {\n    assert(add(2L, 3L) == 5L)\n    println(\"OK\")\n  }\n}\n",
        ),
        "cs": (
            "using System; using System.Diagnostics; class Problem {\n    public static long Add(long x, long y) {\n",
            "        return x + y;",
            "    }\n    public static void Main(string[] args) {\n        Debug.Assert(Add(2L, 3L) == 5L);\n        Console.WriteLine(\"OK\");\n    }\n}\n",
        ),
        "dlang": (
            "long add(long x, long y) {\n",
            "    return x + y;",
            "}\nvoid main() {\n    assert(add(2, 3) == 5);\n    import std.stdio; writeln(\"OK\");\n}\n",
        ),
        "dart": (
            "int add(int x, int y) {\n",
            "  return x + y;",
            "}\nvoid main() {\n  assert(add(2,3) == 5);\n  print('OK');\n}\n",
        ),
        "ocaml": (
            "let add x y =\n",
            "  x + y",
            ";; assert (add 2 3 = 5);\nprint_endline \"OK\";;\n",
        ),
        "fs": (
            "let add x y =\n",
            "    x + y",
            "\nprintfn \"%d\" (add 2 3)\n",
        ),
        "hs": (
            "add :: Int -> Int -> Int\nadd x y =\n",
            "  x + y",
            "\nmain = do\n  if add 2 3 == 5 then putStrLn \"OK\" else error \"FAIL\"\n",
        ),
        "swift": (
            "func add(_ x: Int, _ y: Int) -> Int {\n",
            "    return x + y",
            "}\nif add(2,3) == 5 { print(\"OK\") } else { fatalError(\"FAIL\") }\n",
        ),
        "lean": (
            "def add (x y : Nat) := x + y\n",
            "",
            "theorem t : add 2 3 = 5 := rfl\n",
        ),
        "v": (
            "Definition add (x y : nat) := x + y.\n",
            "",
            "Example t : add 2 3 = 5.\nProof. reflexivity. Qed.\n",
        ),
    }
    return m.get(lang)


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser(description="Smoke-test deployed Lambda evaluators")
    ap.add_argument("languages", nargs="*", help="Subset of languages to test (default: all in lang2url.json)")
    ap.add_argument("--urls", default="lang2url.json", help="Path to JSON file mapping languages to URLs")
    args = ap.parse_args(argv)

    lang2url = load_lang_urls(Path(args.urls))
    if not lang2url:
        print("No URLs found in", args.urls)
        return 2

    targets = args.languages or list(lang2url.keys())

    results = []
    for lang in targets:
        url = lang2url.get(lang)
        if not url:
            results.append({
                "language": lang,
                "url": None,
                "http_status": None,
                "ok": False,
                "result_status": None,
                "stderr": "No URL in mapping",
            })
            continue
        # Base case
        r = test_one(lang, url)
        results.append(r)
        # With-tests case (if supported)
        tcode = tests_for(lang)
        if tcode is not None:
            r2 = test_one(lang, url, tests=tcode, case="tests")
            results.append(r2)
        # Structured triad case (if available)
        triad = triad_for(lang)
        if triad is not None:
            pr, comp, ts = triad
            r3 = test_one(lang, url, tests=ts, prompt=pr, case="triad", completion_override=comp)
            results.append(r3)

    # Pretty print summary
    print("Language,HTTP_OK,Result,URL")
    for r in results:
        print(f"{r['language']},{r['ok']},{r.get('result_status')},{r.get('url')}")

    # Optionally, print failures with errors
    failures = [r for r in results if (not r.get("ok")) or (r.get("result_status") not in (None, "OK"))]
    if failures:
        print("\nFailures (details):")
        for r in failures:
            print(f"- {r['language']}: http={r['http_status']} result={r.get('result_status')}\n  stderr: {str(r.get('stderr'))[:800]}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))

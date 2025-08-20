MultiPL-E Lambda Evaluators — Usage Guide
========================================

This repository provides AWS Lambda endpoints to evaluate code snippets across many programming languages. Each language has a Lambda function that compiles/runs your code in a safe subprocess and returns a normalized result (status, stdout, stderr, exit code).

The API is intentionally simple and general: you send a single request for a language with up to N "completions" (code variants) to evaluate. For languages that require structure (e.g., Java/C++), you can split the program across three fields: `prompt` (header/prefix), a single `completion` (typically the body), and `tests` (suffix/main/assertions).

Endpoints
---------

- Per-language Function URLs are listed in `lang2url.json` under `urls`.
- Health check: `GET <function-url>/healthz` → `{ "status": "ok" }`
- Evaluation: `POST <function-url>/evaluate`

No auth is required for the Function URLs (they are configured for public access for smoke testing). In production, restrict access as appropriate.

Request Schema
--------------

Send JSON with the following fields:

- `language` (string): language key, e.g., `python`, `cpp`, `java`, `rust`, `go_test.go`, `dfy`, `lean`, `v`, etc.
- `prompt` (string): optional program prefix/header. For structured languages, this is where you place the opening of the function/class. For scripting languages, often empty.
- `tests` (string): optional suffix or testing code, appended after the completion. For scripting languages, you can put assertions or print checks here. For structured languages, this commonly closes the function/class and provides a `main` with assertions.
- `completions` (array of strings): one or more code variants to evaluate. For structured languages, each completion is commonly just the function body fragment.
- `name` (string, optional): identifier for this evaluation.
- `stop_tokens` (array of strings, optional): unused by many evaluators, safe to set to `["\n"]`.

Example minimal payload:

```
{
  "language": "python",
  "prompt": "",
  "tests": "",
  "completions": ["print(\"OK\")\n"],
  "name": "smoke_python",
  "stop_tokens": ["\n"]
}
```

Response Schema (per completion)
--------------------------------

`/evaluate` returns your request fields (excluding `completions`) plus a `results` array where each element corresponds to a completion:

- `status`: one of `OK`, `SyntaxError`, `Exception`, `Timeout`, or tool-specific statuses
- `exit_code`: integer process exit code or `-1` on timeout
- `stdout`, `stderr`: captured output (truncated to sane limits)
- `timestamp`: Unix epoch seconds when the evaluation finished

Example response snippet:

```
{
  "language": "python",
  "prompt": "",
  "tests": "",
  "name": "smoke_python",
  "stop_tokens": ["\n"],
  "results": [
    {
      "status": "OK",
      "exit_code": 0,
      "stdout": "OK\n",
      "stderr": "",
      "timestamp": 1700000000
    }
  ]
}
```

How Code Is Constructed
-----------------------

Each evaluator builds a program from:

- `prompt` (prefix)
- the single code string in `completions[0]` (the completion)
- `tests` (suffix)

They are concatenated in that order. For scripting languages, `prompt` is usually empty, `completion` holds a full program or function, and `tests` appends assertions/prints. For structured languages (Java/C++/Rust/Scala/C#), you typically send:

- `prompt`: opening class/function signature
- `completion`: body fragment (e.g., `return x + y;`)
- `tests`: close the function/class and include `main` with assertions

Some languages have special handling:

- `go_test.go`: the evaluator expects a Go test file (_test.go). Provide `completion` with the implementation and `tests` is handled internally.
- `dfy` (Dafny): evaluator runs verification (`verify`), not execution. `OK` means verification passed.
- `lean` and `v` (Coq): send valid declarations/proofs; `OK` means they type-check/compile.

See `src/eval_*.py` docstrings for language-by-language examples.

Quick Start (Python requests)
-----------------------------

```
import json, requests
from urllib.parse import urljoin

lang = "python"
base_url = json.load(open("lang2url.json"))["urls"][lang]
url = urljoin(base_url if base_url.endswith("/") else base_url+"/", "evaluate")

payload = {
  "language": "python",
  "prompt": "",
  "tests": "if __name__ == \"__main__\":\n    assert add(2,3) == 5\n    print(\"OK\")\n",
  "completions": [
    "def add(x, y):\n    return x + y\n"
  ],
  "name": "example_python",
  "stop_tokens": ["\n"]
}

resp = requests.post(url, json=payload, timeout=30)
print(resp.json())
```

Language Examples (prompt + completion + tests)
-----------------------------------------------

Below are concise examples matching what we use in smoke tests. You may paste them into `prompt`, `completion`, and `tests` fields as indicated.

- Python
  - completion:
    ```
    def add(x, y):
        return x + y
    ```
  - tests:
    ```
    if __name__ == "__main__":
        assert add(2, 3) == 5
        print("OK")
    ```

- JavaScript
  - completion:
    ```
    function add(x, y) { return x + y; }
    ```
  - tests:
    ```
    const assert = require('node:assert');
    assert.strictEqual(add(2,3), 5);
    console.log('OK');
    ```

- TypeScript
  - completion:
    ```
    function add(x: number, y: number): number { return x + y; }
    ```
  - tests:
    ```
    console.assert(add(2,3) === 5);
    console.log('OK');
    ```

- Ruby
  - completion:
    ```
    def add(x, y)
      x + y
    end
    ```
  - tests:
    ```
    require 'test/unit'
    class TestHumanEval < Test::Unit::TestCase
      def test_add
        assert_equal 5, add(2,3)
      end
    end
    ```

- Lua / Luau
  - completion:
    ```
    function add(x, y) return x + y end
    ```
  - tests:
    ```
    assert(add(2,3) == 5)
    print('OK')
    ```

- PHP
  - completion:
    ```
    <?php
    function add($x, $y) { return $x + $y; }
    ```
  - tests:
    ```
    if (add(2, 3) === 5) { echo "OK\n"; } else { echo "FAIL\n"; }
    ```

- R
  - completion:
    ```
    add <- function(x, y) x + y
    ```
  - tests:
    ```
    stopifnot(add(2,3) == 5)
    cat("OK\n")
    ```

- Racket
  - prompt:
    ```
    #lang racket
    (define (add x y) (+ x y))
    ```
  - tests:
    ```
    (require rackunit)
    (check-equal? (add 2 3) 5)
    (displayln "OK")
    ```

- Bash (sh)
  - completion:
    ```
    add(){ echo $(($1 + $2)); }
    ```
  - tests:
    ```
    if [ "$(add 2 3)" -eq 5 ]; then echo OK; else echo FAIL; fi
    ```

- Perl (pl)
  - completion:
    ```
    sub add { return $_[0] + $_[1]; }
    ```
  - tests:
    ```
    if (add(2,3) != 5) { die "FAIL\n" } else { print "OK\n" }
    ```

- Julia
  - completion:
    ```
    add(x,y) = x + y
    ```
  - tests:
    ```
    @assert add(2,3) == 5
    println("OK")
    ```

- Elixir
  - completion:
    ```
    defmodule M do
      def add(x,y), do: x + y
    end
    ```
  - tests:
    ```
    if M.add(2,3) != 5 do
      raise "FAIL"
    else
      IO.puts("OK")
    end
    ```

- Clojure (clj)
  - completion:
    ```
    (defn add [x y] (+ x y))
    ```
  - tests:
    ```
    ;; Evaluator looks for the summary line
    (println)
    (println "0 failures, 0 errors.")
    ```

- C++
  - prompt:
    ```
    #include <assert.h>
    #include <stdio.h>
    long add(long x, long y) {
    ```
  - completion:
    ```
        return x + y;
    ```
  - tests:
    ```
    }
    int main(){
        long (*candidate)(long,long) = add;
        assert(candidate(2,3) == 5);
        puts("OK");
    }
    ```

- Rust
  - prompt:
    ```
    fn add(x: isize, y: isize) -> isize {
    ```
  - completion:
    ```
        x + y
    ```
  - tests:
    ```
    }
    fn main() {
        assert_eq!(add(2,3), 5);
        println!("OK");
    }
    ```

- Java
  - prompt:
    ```
    class Problem {
        public static long add(long x, long y) {
    ```
  - completion:
    ```
            return x + y;
    ```
  - tests:
    ```
        }
        public static void main(String[] args) {
            assert add(2L, 3L) == 5L;
            System.out.println("OK");
        }
    }
    ```

- Scala
  - prompt:
    ```
    object Problem {
      def add(x: Long, y: Long): Long = {
    ```
  - completion:
    ```
        x + y
    ```
  - tests:
    ```
      }
      def main(args: Array[String]) = {
        assert(add(2L, 3L) == 5L)
        println("OK")
      }
    }
    ```

- C# (cs)
  - prompt:
    ```
    using System; using System.Diagnostics; class Problem {
      public static long Add(long x, long y) {
    ```
  - completion:
    ```
          return x + y;
    ```
  - tests:
    ```
      }
      public static void Main(string[] args) {
        Debug.Assert(Add(2L, 3L) == 5L);
        Console.WriteLine("OK");
      }
    }
    ```

- Dart
  - prompt:
    ```
    int add(int x, int y) {
    ```
  - completion:
    ```
      return x + y;
    ```
  - tests:
    ```
    }
    void main() {
      assert(add(2,3) == 5);
      print('OK');
    }
    ```

- OCaml (ml)
  - prompt:
    ```
    let add x y =
    ```
  - completion:
    ```
      x + y
    ```
  - tests:
    ```
    ;; assert (add 2 3 = 5);
    print_endline "OK";;
    ```

- F# (fs)
  - prompt:
    ```
    let add x y =
    ```
  - completion:
    ```
        x + y
    ```
  - tests:
    ```
    printfn "%d" (add 2 3)
    ```

- Haskell (hs)
  - prompt:
    ```
    add :: Int -> Int -> Int
    add x y =
    ```
  - completion:
    ```
      x + y
    ```
  - tests:
    ```
    main = do
      if add 2 3 == 5 then putStrLn "OK" else error "FAIL"
    ```

- Swift
  - prompt:
    ```
    func add(_ x: Int, _ y: Int) -> Int {
    ```
  - completion:
    ```
        return x + y
    ```
  - tests:
    ```
    }
    if add(2,3) == 5 { print("OK") } else { fatalError("FAIL") }
    ```

- Dafny (dfy)
  - Note: evaluator uses verification (`verify`), not `run`.
  - completion:
    ```
    method Add(x: int, y: int) returns (r: int) { r := x + y; }
    ```
  - tests:
    ```
    method Main() {
      assert Add(2,3) == 5;
      print "OK\n";
    }
    ```

- Lean (lean)
  - prompt:
    ```
    def add (x y : Nat) := x + y
    ```
  - tests:
    ```
    theorem t : add 2 3 = 5 := rfl
    ```

- Coq (v)
  - prompt:
    ```
    Definition add (x y : nat) := x + y.
    ```
  - tests:
    ```
    Example t : add 2 3 = 5.
    Proof. reflexivity. Qed.
    ```

- Go tests (`go_test.go`)
  - Completion (implementation):
    ```
    package main
    func add(x, y int) int { return x + y }
    ```
  - Tests: evaluator drives `go test` with a generated `_test.go`.

- Ada (adb)
  - completion:
    ```
    with Ada.Text_IO; use Ada.Text_IO;
    procedure Main is
      function Add(X, Y : Integer) return Integer is (X + Y);
    begin
      null;
    end Main;
    ```
  - tests: place calls/prints in `Main` (e.g., `Put_Line(Integer'Image(Add(2,3)));`).

Timeouts, Limits, and Notes
---------------------------

- Each evaluator enforces a per-step timeout (compile and run). See `src/eval_*.py` for language-specific timeouts.
- Output is truncated to a small cap (~2 KiB) per stream.
- Network egress in Lambda containers is restricted; evaluators are designed to avoid fetching dependencies at runtime.

Troubleshooting
---------------

- HTTP 200 but `status != OK`: Check `stderr` for compiler/runtime errors. For Clojure, we synthesize `OK` by looking for the summary line `0 failures, 0 errors.`
- Timeouts: Increase program efficiency or verify that your code does not block on input.
- Java/Scala: Ensure your `prompt` uses the expected class/object name (`Problem`) and that `tests` closes the structure.

Utilities
---------

- Smoke tests: `python smoke_test_lambdas.py` runs a comprehensive set of examples per language using the patterns above.
- Endpoint map: `lang2url.json` contains each language’s Function URL.

If you want additional languages or stronger tests, open an issue or extend `triad_for()`/`tests_for()` in `smoke_test_lambdas.py` following the examples above.


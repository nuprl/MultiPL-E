#!/usr/bin/env python3
"""Validate Sounio hand translations against the MultiPL-E auto translator.

For each pair (references/auto/X.sio, references/hand/X.sio), strip the
function body region opened by `with Mut, Panic, Div {` and closed by the
next bare `}` at column 0, then assert that the *remaining* lines (prompt
docstring, signature, test harness) match exactly.

This catches translator regressions on:
  * type mapping (Python int/float/List -> Sounio i64/f64/Vec)
  * literal handling (`(0 - n)` for negatives, `true`/`false`, `vec![]`)
  * test assertion shape (`assert(candidate(...) == ...)` and Option coercions)
  * docstring formatting (`//` line-comment prefix)

Exit code is 0 if all pairs pass, 1 otherwise.  The body region is
intentionally ignored because it is the LLM's (or the human's) free
contribution; only the *translator-produced* portion is graded here.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path


HERE = Path(__file__).resolve().parent
HAND_DIR = HERE / "hand"
AUTO_DIR = HERE / "auto"

BODY_OPEN_RE = re.compile(r"^fn\s+\w+\(.*\).*\{$")
# A bare closing brace at column 0 marks the end of the user function body.
BODY_CLOSE = "}"


def strip_body(text: str) -> list[str]:
    """Return all lines except the user-function body region."""
    lines = text.splitlines()
    out: list[str] = []
    in_body = False
    body_seen_close = False
    for line in lines:
        if not in_body:
            out.append(line)
            if BODY_OPEN_RE.match(line) and not body_seen_close:
                in_body = True
            continue
        # We are inside the body; eat lines until we see the closing `}` at
        # column 0, which we re-emit so the structural compare lines up.
        if line == BODY_CLOSE:
            in_body = False
            body_seen_close = True
            out.append(line)
    return out


def diff(a: list[str], b: list[str]) -> list[str]:
    import difflib

    return list(difflib.unified_diff(a, b, fromfile="auto", tofile="hand", lineterm=""))


def main() -> int:
    hand_files = sorted(HAND_DIR.glob("*.sio"))
    if not hand_files:
        print(f"no hand references found in {HAND_DIR}", file=sys.stderr)
        return 1

    failures: list[str] = []
    for hand_path in hand_files:
        auto_path = AUTO_DIR / hand_path.name
        if not auto_path.exists():
            failures.append(f"MISSING auto: {hand_path.name}")
            continue
        hand_lines = strip_body(hand_path.read_text())
        auto_lines = strip_body(auto_path.read_text())
        if hand_lines != auto_lines:
            d = diff(auto_lines, hand_lines)
            failures.append(f"DIFF {hand_path.name}\n" + "\n".join(d))

    total = len(hand_files)
    passed = total - len(failures)
    print(f"validate: {passed}/{total} pass")
    for f in failures:
        print(f)
    return 0 if not failures else 1


if __name__ == "__main__":
    sys.exit(main())

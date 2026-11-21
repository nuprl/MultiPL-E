#!/usr/bin/env python3
"""Validate Sounio hand translations against the MultiPL-E auto translator.

For each pair, exclude only the named benchmark function's body, preserving
all generated runtime helpers, the signature, comments and test harness.
The entry point is derived from the reference filename, never inferred as
the first function in a generated prefix. Malformed/missing boundaries fail.

Exit code is 0 if all pairs pass, 1 otherwise.  The body region is
intentionally ignored because it is the LLM's (or the human's) free
contribution; only the *translator-produced* portion is graded here.
"""

from __future__ import annotations

import re
import sys
import argparse
from pathlib import Path


HERE = Path(__file__).resolve().parent
HAND_DIR = HERE / "hand"
AUTO_DIR = HERE / "auto"

# A bare closing brace at column 0 marks the end of the user function body.
BODY_CLOSE = "}"


def strip_body(text: str, entry_point: str) -> list[str]:
    """Return all lines except the user-function body region."""
    lines = text.splitlines()
    out: list[str] = []
    in_body = False
    body_seen_close = False
    found = False
    body_open = re.compile(r"^fn\s+" + re.escape(entry_point) + r"\(")
    for line in lines:
        if not in_body:
            out.append(line)
            if body_open.match(line):
                if found or not line.rstrip().endswith("{"):
                    raise ValueError("ambiguous reference function boundary")
                found = True
                in_body = True
            continue
        # We are inside the body; eat lines until we see the closing `}` at
        # column 0, which we re-emit so the structural compare lines up.
        if line == BODY_CLOSE:
            in_body = False
            body_seen_close = True
            out.append(line)
    if not found or not body_seen_close or in_body:
        raise ValueError("missing or unterminated reference function")
    return out


def diff(a: list[str], b: list[str]) -> list[str]:
    import difflib

    return list(difflib.unified_diff(a, b, fromfile="auto", tofile="hand", lineterm=""))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, default=HERE)
    args = parser.parse_args()
    hand_dir = args.root / "hand"
    hand_files = sorted(hand_dir.glob("*.sio"))
    if not hand_files:
        print(f"no hand references found in {hand_dir}", file=sys.stderr)
        return 1

    failures: list[str] = []
    for hand_path in hand_files:
        auto_path = args.root / "auto" / hand_path.name
        if not auto_path.exists():
            failures.append(f"MISSING auto: {hand_path.name}")
            continue
        entry_point = hand_path.stem.split("_", 2)[-1]
        try:
            hand_lines = strip_body(hand_path.read_text(), entry_point)
            auto_lines = strip_body(auto_path.read_text(), entry_point)
        except ValueError as error:
            failures.append(f"INVALID {hand_path.name}: {error}")
            continue
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

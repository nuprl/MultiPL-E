"""
Scheme translator for MultiPL-E, R7RS standard with SRFIs.

Imports 15 R7RS standard libraries (excluding (scheme r5rs)) and all 36
SRFIs shipped with GNU Guile 3.0.7 (Ubuntu 22.04).

- https://r7rs.org/
- https://srfi.schemers.org/
"""

from humaneval_to_scm import Translator as Base

class Translator(Base):

    _R7RS = [
        "base", "case-lambda", "char", "complex", "cxr", "eval",
        "file", "inexact", "lazy", "load", "process-context",
        "read", "repl", "time", "write",
    ]

    _SRFIS = [
        1, 2, 4, 6, 8, 9, 10, 11, 13, 14, 16, 17, 18, 19, 26, 27, 28,
        31, 34, 35, 37, 38, 39, 41, 42, 43, 45, 60, 64, 67, 69, 71,
        88, 98, 111, 171,
    ]

    preamble = "(import " + " ".join(
        [f"(scheme {m})" for m in _R7RS] +
        [f"(srfi srfi-{n})" for n in _SRFIS]
    ) + ")"

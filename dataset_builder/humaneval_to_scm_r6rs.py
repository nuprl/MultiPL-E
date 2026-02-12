"""
Scheme translator for MultiPL-E, R6RS standard.

- https://r6rs.org/
"""

from humaneval_to_scm import Translator as Base

class Translator(Base):

    preamble = "#!r6rs\n(import (rnrs))"

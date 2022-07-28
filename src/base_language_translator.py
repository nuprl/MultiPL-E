from abc import ABC, abstractmethod
from typing import Tuple, List, TypeVar, Generic
import ast


T = TypeVar('T') 

class LanguageTranslator(ABC, Generic[T]):
    @abstractmethod
    def gen_literal(self, c: bool | str | int | float | None) -> T:
        """
        Translate a literal expression
        c: is the literal value
        """
        pass

    @abstractmethod
    def gen_var(self, v: str) -> T:
        """
        Translate a variable with name v.
        """
        pass

    @abstractmethod
    def gen_list(self, l: List[Tuple[str, ast.Expr]]) -> T:
        """
        Translate a list with elements l
        """
        pass

    @abstractmethod
    def gen_tuple(self, t: List[T]) -> T:
        """
        Translate a tuple with elements t
        """
        pass

    @abstractmethod
    def gen_dict(self, keys: List[T], values: List[T]) -> T:
        """
        Translate a dictionary with keys and values
        """
        pass

    @abstractmethod
    def gen_call(self, func: str, args: List[T]) -> T:
        """
        Translate a function call `func(args)`
        """
        pass

    @abstractmethod
    def translate_prompt(self, name: str, args: List[ast.arg], returns: ast.expr, description: str) -> str:
        """
        Translate Python prompt.
        """
        pass

    @abstractmethod
    def test_suite_prefix_lines(self, entry_point: str) -> List[str]:
        """
        This code goes at the start of the test suite.
        The entry_point is ???
        """
        pass

    @abstractmethod
    def test_suite_suffix_lines(self) -> List[str]:
        """
        This code goes at the end of the test suite.
        """
        pass

    @abstractmethod
    def deep_equality(self, left: T, right: T) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        """
        pass

    @abstractmethod
    def file_ext(self) -> str:
        """
        The file extension for this language
        """
        pass

    @abstractmethod
    def stop(self) -> List[str]:
        """
        The list of stop tokens for this language
        """
        pass



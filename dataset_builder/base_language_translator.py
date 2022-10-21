from abc import ABC, abstractmethod
from typing import Tuple, List, TypeVar, Generic
import ast


TargetExp = TypeVar('TargetExp') 

class LanguageTranslator(ABC, Generic[TargetExp]):
    @abstractmethod
    def gen_literal(self, c: bool | str | int | float | None) -> TargetExp:
        """
        Translate a literal expression
        c: is the literal value
        """
        pass

    @abstractmethod
    def gen_var(self, v: str) -> TargetExp:
        """
        Translate a variable with name v.
        """
        pass

    @abstractmethod
    def gen_list(self, l: List[TargetExp]) -> TargetExp:
        """
        Translate a list with elements l
        """
        pass

    @abstractmethod
    def gen_tuple(self, t: List[TargetExp]) -> TargetExp:
        """
        Translate a tuple with elements t
        """
        pass

    @abstractmethod
    def gen_dict(self, keys: List[TargetExp], values: List[TargetExp]) -> TargetExp:
        """
        Translate a dictionary with keys and values
        """
        pass

    @abstractmethod
    def gen_call(self, func: TargetExp, args: List[TargetExp]) -> TargetExp:
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
    def deep_equality(self, left: TargetExp, right: TargetExp) -> str:
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

    def no_completion_prompt_stub(self) -> str:
        """
        A default stub to create a syntactically valid translation in case of not performing completion.
        For example, for Rust this could be:

            todo!()
        }
        
        """
        return ""



import re
import ast
from typing import List, Optional
from humaneval_to_cpp import CPPTranslator


class JavaTranslator(CPPTranslator):
    stop = ["}\n\n"]

    def __init__(self, file_ext):
        super().__init__(file_ext)
        self.string_type = "String"
        self.float_type = "float"
        self.int_type = "long"
        self.bool_type = "bool"
        self.none_type = "{}"
        self.list_type = "ArrayList<%s>"
        self.tuple_type = "std::tuple<%s>"
        self.make_tuple = "std::make_tuple"
        self.dict_type = "HashMap<%s, %s>"
        self.optional_type = "Optional<%s>"
        self.any_type = "std::any"
    
    def box_type(self, primitive_type):
        assert primitive_type in [self.float_type, self.bool_type, self.int_type], "Invalid primitive type"
        
        return primitive_type.capitalize()

    def module_imports(self) -> str:
        return "\n".join([
            "import java.util.*;"
        ])

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        


if __name__ == "__main__":
    translator = JavaTranslator("java")
    main(translator)

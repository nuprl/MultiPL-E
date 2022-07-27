import re
import ast
from typing import List, Optional
from generic_translator import main



# Translate a python function to a java function
# Python: def addTwo(a: int) -> int
# Java: int addTwo(int a) 


class JavaTranslator:
    stop = ["}\n\n"]

    def __init__(self, file_ext):
        self.file_ext = file_ext

    #Use for ArrayLists, Maps
    def translate_type(self, t):
        if pytype == int:
            return "int"
        elif pytype == float:
            return "float"
        elif pytype == bool:
            return "boolean"
        elif pytype == str:
            return "String"
        elif pytype == List[int] #Taking into account List[List[int]]
            return "ArrayList<Integer>"

    def gen_list(self, l: List[])
        '''Translate a list '''

        return f"ArrayList<"
    def gen_unop()



    


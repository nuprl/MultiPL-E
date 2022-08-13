from typing import Dict, NamedTuple
import swift_category_data
import racket_category_data
import python_category_data
import csharp_category_data

# Classifications in progress
# These are four overall categories, but we aren't going to be stuck with that.
# Let's make this a JSON file that maps different error categories in languages to a single category

RUNTIME = [
  { 
    "Theme": "NullReference",
    "Swift": [ "Exception-UnwrapNil"],
    "C#": ["NullReferenceException"],
    "Racket": [],
    "Python": []
  },
  {
    "Theme": "InvalidDataStructureOperation",
    "Swift": [
      "Exception-IndexOutOfRange",	
      "Exception-StringIndexOutOfBounds", 
      "Exception-ArrayIndexOutOfRange", 
      "Exception-InvalidRangeCreation", 
      "Exception-RemoveLastFromEmptyCollection", 
      "Exception-RemoveFirstFromEmptyCollection", 
      "Exception-NegativeArrayIndex"
    ],
    "C#": [
        "IndexOutOfRangeException", 
        "KeyNotFoundException", 
        "ArgumentOutOfRangeException", 
        "InvalidOperationException"
    ],
    "Racket": ["list_index_too_large"],
    "Python": [
      "AttributeError", 
      "KeyError", 
      "IndexError"
    ]
  },
  {
    "Theme": "DivisionByZero",
    "Swift": ["Exception-DivisionByZeroInRemainder"],
    "C#": [],
    "Python": ["ZeroDivisionError"],
    "Racket": ["division_by_0"]
  },
  {
    "Theme": "TimeoutOrInfiniteRecursion",
    "Swift": ["Timeout"],
    "Python": ["RecursionError"],
    "Racket": ["timeout"]
  }
]


STATIC = [
  {
    "Theme": "UndefinedIdentifier",
    "Python": [
      "NameError", 
      "UnboundLocalError"
    ],
    "C#": [
      "UndefinedIdentifier", 
      "TypeNotFound", 
      "MethodNotFound"
    ],
    "Swift": [
      "CompileError-LinkerError", 
      "CompileError-NonExistentMethod", 
      "CompileError-CanNotFindInScope", 
      "CompileError-UseBeforeDecl", 
      "CompileError-TypeCheck-CallingNonFunctionType",
      "CompileError-InvalidSyntax"
    ],
    "Racket": ["unbound_identifier"]
  },
  {
    "Theme": "MissingReturn",
    "Python": [],
    "C#": ["MissingReturn"],
    "Racket": [],
    "Swift": [],
  },
  {
    "Theme": "IncorrectAPIMethodCall",
    "Swift": [
      "CompileError-SubscriptStringWithInt",
      "CompileError-TypeMismatch-StringIndices",
      "CompileError-TypeMismatch-StringsArentCharArrays"
    ],
    "Racket": [], # YT: Surprisingly it seems that there is no such cases for Racket.
  },
  {
    "Theme": "Re-Declaration",
    "C#": ["Re-declaration"],
    "Racket": ["let_duplicate_identifier"], 
    "Swift": ["CompileError-RedeclarationOfVariable"],
  }
]

TYPE = [ 
  {
    "Theme": "InvalidTypeConversion",
    "C#": ["TypeConversion"],
    "Python": [],
    "Swift": [
      "CompileError-TypeCheck-UnwrappedNonOptional", 
      "CompileError-TypeCheck-ShouldHaveUnwrappedOptional", 
      "CompileError-UseOfModWithFloat",
      "CompileError-TypeCheck-ReturnTypeError",
      "CompileError-TypeCheck-ArgumentTypeError",
      "CompileError-TypeCheck-ClosureResultTypeError",
      "CompileError-TypeCheck-BranchTypeMismatch",
      "CompileError-TypeCheck-BinOpTypeError",
      "CompileError-TypeCheck-PatternTypeError",
      "CompileError-TypeCheck-SubscriptingTypeError",
      "CompileError-TypeCheck-AssignmentTypeError",
      "CompileError-TypeCheck-MiscTypeError",
      "CompileError-TypeCheck-WeirdSubscriptTypeError",
      "CompileError-TypeCheck-UnknownTypeErrorInCall",
      "CompileError-TypeMismatch-Numerics",
      "CompileError-TypeMismatch-CollectionAndInner",
      "CompileError-TypeMismatch-Else"
    ],
    "Racket": ["contract_violation"]
  }
  
]

LANGUAGE = [
  {
    "Theme": "Language specific problems",
    "C#": ["InvalidAssignment", "Exception: Invalid beat:"],
    "Swift": [
      "Exception-OverflowUnderflowTrap", 
      "CompileError-UseOfDeprecatedUnavailableThings", 
      "CompileError-NonExclusiveMutation", 
      "CompileError-ImmutableViolation", 
      "CompileError-MissingArgumentLabel", 
      "CompileError-ExtraneousArgumentLabel", 
      "CompileError-IncorrectArgumentLabel", 
      "CompileError-ExtraArgument"
    ],
    "Racket": ["unknown_escape_sequence", "bad_char_const"],
    "Python": ["EOFError"]
  },
  {
    "Theme": "Niche Language",
    "Racket": ["A03_if_extra_args", "missing_else", "bad_syntax", "else_as_expression",  "missing_or_unmatched_braces", "unclassified"] 
    # default_value_exp_missing means racket completions is hallucinating Haskell perhaps? 
  }
]

MODEL = [
  {
    "Theme": "OutOfTokens",
    "C#": ["SyntaxError"],
    "Python" : ["SyntaxError"],
    "Racket": ["A02_incomplete_generation"],
    "Swift": [
      "CompileError-RanOutOfTokens", 
      "CompileError-CompilerErrorCutoff",
      "CompileError-MissingReturn"
    ]
  },
  {
    "Theme": "ExceptionInGeneratedCode", 
    "C#": ["NotImplementedException"],
    "Python": ["NotImplementedError"],
    "Swift": [],
    "Racket": [] 
  },
  {
    "Theme": "GenerateAnotherLang",
    "Racket": ["default_value_exp_missing", "A01_generating_webpage_or_markdown"],
    "Swift": []
  }
]




class CategoryInfo(NamedTuple):
  name: str
  description: str
  count: int
  total_failures: int

def build_code_data_dict(lang_module) -> Dict[str, CategoryInfo]:
  codes: list[str] = [code for g in [RUNTIME, STATIC, TYPE, LANGUAGE, MODEL] 
                           for theme in g 
                           for code in (theme[lang_module.LANG_NAME] if lang_module.LANG_NAME in theme else [])]
  # Verify each code appears only once
  assert len(codes) == len(set(codes)), codes
  return dict((code, CategoryInfo(code, lang_module.get_description(code), lang_module.get_code_count(code), lang_module.get_total_failures())) for code in codes)

SWIFT_CODES_DATA = build_code_data_dict(swift_category_data)
RACKET_CODES_DATA = build_code_data_dict(racket_category_data)
# print(RACKET_CODES_DATA) 
PYTHON_CODES_DATA = build_code_data_dict(python_category_data)
CSHARP_CODES_DATA = build_code_data_dict(csharp_category_data)
# print(CSHARP_CODES_DATA)
# print(RACKET_CODES_DATA)

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
    "Racket": ["indexOutOfRange", "hashmapNoValueForKey"],
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
    "Racket": ["divisionBy0"]
  },
  {
    "Theme": "TimeoutOrInfiniteRecursion",
    "Swift": ["Timeout"],
    "Python": ["RecursionError"],
    "Racket": ["timeout"]
  },
  {
    "Theme": "AssertionFailed",
    "Swift": [],
    "Python": ["AssertionError"],
    "Racket": [],
    "C#" : ["AssertionError"]
  },
  {
    "Theme": "OK",
    "Swift": ["OK"],
    "Python": ["OK"],
    "Racket": ["OK"],
    "C#": ["OK"]
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
    "Racket": ["unboundIdentifier", "useBeforeInit", "applicationOnNotAFunction"]
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
    "Racket": ["badBuiltInFnAppCall"], 
  },
  {
    "Theme": "Re-Declaration",
    "C#": ["Re-declaration"],
    "Racket": ["letDuplicateIdentifier"], 
    "Swift": ["CompileError-RedeclarationOfVariable"],
  },
  {
    "Theme": "ArityMismatch",
    "Racket": ["arityMismatch"],
    "C#": ["InvalidArgument"]
  }
]

TYPE = [ 
  {
    "Theme": "InvalidTypeConversion",
    "C#": ["TypeConversion"],
    "Python": ["TypeError"],
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
    "Racket": ["contractViolation"]
  }
  
]

LANGUAGE = [
  {
    "Theme": "Language specific problems",
    "C#": ["InvalidAssignment"],
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
    "Racket": ["unknownEscapeSequence", "badCharConst"],
    "Python": ["EOFError"]
  },
  {
    "Theme": "Niche Language",
    "Racket": ["A03IfExtraArgs", "missingElse", "badSyntax", "elseAsExpression",  "missingOrUnmatchedBraces", "unclassified"] 
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
    "C#": ["NotImplementedException", "InvalidBeat"],
    "Python": ["NotImplementedError"],
    "Swift": [],
    "Racket": [] 
  },
  {
    "Theme": "GenerateAnotherLang",
    "Racket": ["defaultValueExpMissing", "A01GeneratingWebpageOrMarkdown"],
    "Swift": []
  }
]

for d in [RUNTIME, STATIC, TYPE, LANGUAGE, MODEL]:
  for theme in d: 
    for v in ['C#', 'Python', 'Swift', 'Racket']:
      if v in theme:
        for value in theme[v]:
          print(f"{theme['Theme']},{value},{v}")




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
PYTHON_CODES_DATA = build_code_data_dict(python_category_data)
CSHARP_CODES_DATA = build_code_data_dict(csharp_category_data)

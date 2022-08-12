# Classifications in progress
# These are four overall categories, but we aren't going to be stuck with that.
# Let's make this a JSON file that maps different error categories in languages to a single category

RUNTIME_ISH = [
  { 
    "Theme": "NullReference",
    "Swift": [ "Exception-UnwrapNil"],
    "C#": ["NullReferenceException"],
    "Racket": [],
    "Python": [""]
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
    "C#": ["IndexOutOfRange", "KeyNotFound", "ArgumentOutOfRange", "InvalidOperationException"],
    "Racket": "??",
    "Python": ["AttributeError", "KeyError", "IndexError"]
  },
  {
    "Theme": "DivisionOfZero",
    "Swift": ["Exception-DivisionByZeroInRemainder"],
    "C#": [""],
    "Python": ["ZeroDivisionError"],
    "Racket": [""]
  },
  {
    "Theme": "TimeoutOrInfiniteRecursion",
    "Swift": ["Timeout"],
  }
]


STATIC_ISH = [
  {
    "Theme": "UndefinedIdentifier",
    "Python": ["AttributeError", "NameError", "UnboundLocalError"],
    "C#": ["Name does not exist", "TypeNotFound", "Method not found"],
    "Swift": [
      "CompileError-LinkerError", 
      "CompileError-NonExistentMethod", 
      "CompileError-CanNotFindInScope", 
      "CompileError-UseBeforeDecl", 
      "CompileError-TypeCheck-CallingNonFunctionType",
      "CompileError-InvalidSyntax"
    ],
    "Racket": ["unbound identifier"]
  },
  {
    "Theme": "MissingReturn",
    "Python": ["None"],
    "C#": ["no return in all branches "],
    "Racket": [""],
    "Swift": [],
  },
  {
    "Theme": "IncorrectAPIMethodCall",
    "Swift": [
      "CompileError-SubscriptStringWithInt",
      "CompileError-TypeMismatch-StringIndices",
      "CompileError-TypeMismatch-StringsArentCharArrays"
    ],
    "Racket": [], # TODO(yt)
  },
  {
    "Theme": "Re-Declaration",
    "C#": ["Declaration error"],
    "Racket": ["let"], 
    "Swift": ["CompileError-RedeclarationOfVariable"],
  }
]

TYPE_ISH = [ 
  {
    "Theme": "InvalidTypeConversion",
    "C#": ["long to int", "long to Optional<long>"],
    "Python": [""],
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
    "Racket": ["contract violation"]
  }
  
]

LANGUAGE_ISH = [
{
    "Theme": "Language specific problems",
    "C#": "invalid assignment",
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
    "Racket": "Escape sequence error in Racket (\\w) ", "treat and as char"
    "Python": "EOFError"
  },
  {
    "Theme": "Niche Language",
    "Racket": "if-else extra arguments" # TODO(yt)
  },
]

MODEL_ISH = [
  {
    "Theme": "OutOfTokens",
    "C#": ["Brace not matched"],
    "Racket": ...,
    "Swift": [
      "CompileError-RanOutOfTokens", 
      "CompileError-CompilerErrorCutoff",
      "CompileError-MissingReturn"
    ]
  },
  {
    "Theme": "ExceptionInGeneratedCode", 
    "C#": "Not implemented" #TODO (abhinav isn't this Python?)
  },
  {
    "Theme": "GenerateAnotherLang",
    "Racket": ... #TODO(yt)
  }
]

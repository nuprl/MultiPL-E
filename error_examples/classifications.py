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
    "Racket": "??",
    "Python": [
      "AttributeError", 
      "KeyError", 
      "IndexError"
    ]
  },
  {
    "Theme": "DivisionByZero",
    "Swift": ["Exception-DivisionByZeroInRemainder"],
    "C#": [""],
    "Python": ["ZeroDivisionError"],
    "Racket": [""]
  },
  {
    "Theme": "TimeoutOrInfiniteRecursion",
    "Swift": [], # TODO(donald)
    "Python": ["RecursionError"]
  }
]


STATIC = [
  {
    "Theme": "UndefinedIdentifier",
    "Python": [
      "AttributeError", 
      "NameError", 
      "UnboundLocalError"
    ],
    "C#": [
      "Name does not exist", 
      "TypeNotFound", 
      "Method not found"
    ],
    "Swift": [
      "CompileError-LinkerError", 
      "CompileError-NonExistentMethod", 
      "CompileError-CanNotFindInScope", 
      "CompileError-UseBeforeDecl", 
      "CompileError-TypeCheck-CallingNonFunctionType"
    ],
    "Racket": ["unbound identifier"]
  },
  {
    "Theme": "MissingReturn",
    "Python": ["None"],
    "C#": ["no return in all branches"],
    "Racket": [""],
    "Swift": [], # TODO(donald)
  },
  {
    "Theme": "IncorrectAPIMethodCall",
    "Swift": [], # TODO(donald)
    "Racket": [], # TODO(yt)
  },
  {
    "Theme": "Re-Declaration",
    "C#": ["Declaration error"],
    "Racket": ["let"], 
    "Swift": [], # TODO(donald)
  }
]

TYPE = [ 
  {
    "Theme": "InvalidTypeConversion",
    "C#": ["Type Conversion Error"],
    "Python": [],
    "Swift": [
      "CompileError-TypeCheck-UnwrappedNonOptional", 
      "CompileError-TypeCheck-ShouldHaveUnwrappedOptional", 
      "CompileError-UseOfModWithFloat"
    ], # TODO(donald)
    "Racket": ["contract violation"]
  }
  
]

LANGUAGE = [
  {
    "Theme": "Language specific problems", # BUG(These aren't all type-ish)
    "C#": ["Invalid Assignment"],
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
    "Racket": "Escape sequence error in Racket (\\w) ", "treat and as char",
    "Python": ["EOFError"]
  },
  {
    "Theme": "Niche Language",
    "Racket": "if-else extra arguments" # TODO(yt)
  },
]

MODEL = [
  {
    "Theme": "OutOfTokens",
    "C#": ["SyntaxError"],
    "Python" : ["SyntaxError"]
    "Racket": ...,
    "Swift": ["CompileError-RanOutOfTokens"]
  },
  {
    "Theme": "ExceptionInGeneratedCode", 
    "C#": ["NotImplementedException"],
    "Python": ["NotImplementedError"]
  },
  {
    "Theme": "GenerateAnotherLang",
    "Racket": ... #TODO(yt)
  }
]

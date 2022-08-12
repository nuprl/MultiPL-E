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
    "Racket": ["list index too large"],
    "Python": ["AttributeError", "KeyError", "IndexError"]
  },
  {
    "Theme": "DivisionOfZero",
    "Swift": ["Exception-DivisionByZeroInRemainder"],
    "C#": [""],
    "Python": ["ZeroDivisionError"],
    "Racket": ["division by zero"]
  },
  {
    "Theme": "TimeoutOrInfiniteRecursion",
    "Swift": [], # TODO(donald)
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
      "CompileError-TypeCheck-CallingNonFunctionType"
    ],
    "Racket": ["unbound identifier"]
  },
  {
    "Theme": "MissingReturn",
    "Python": ["None"],
    "C#": ["no return in all branches "],
    "Racket": [""],
    "Swift": [], # TODO(donald)
  },
  {
    "Theme": "IncorrectAPIMethodCall",
    "Swift": [], # TODO(donald)
    "Racket": [], # YT: Surprisingly it seems that there is no such cases for Racket.
  },
  {
    "Theme": "Re-Declaration",
    "C#": ["Declaration error"],
    "Racket": ["let: duplicate identifier"], 
    "Swift": [], # TODO(donald)
  }
]

TYPE_ISH = [ 
  {
    "Theme": "InvalidTypeConversion",
    "C#": ["long to int", "long to Optional<long>"],
    "Python": [""],
    "Swift": [
      "CompileError-UnwrappedNonOptional", 
      "CompileError-ShouldHaveUnwrappedOptional", 
      "CompileError-UseOfModWithFloat"
    ], # TODO(donald)
    "Racket": ["contract violation"]
  }
  
]

LANGUAGE_ISH = [
{
    "Theme": "Language specific problems", # BUG(These aren't all type-ish)
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
    "Racket": ["if-else extra arguments", "all unclassified errors"] 
  }
]

MODEL_ISH = [
  {
    "Theme": "OutOfTokens",
    "C#": ["Brace not matched"],
    "Racket": ["bracket or brace not matched", "double-quotes not matched"],
    "Swift": ["CompileError-RanOutOfTokens"]
  },
  {
    "Theme": "ExceptionInGeneratedCode", 
    "C#": "Not implemented" #TODO (abhinav isn't this Python?)
  },
  {
    "Theme": "GenerateAnotherLang",
    "Racket": []
  }
]

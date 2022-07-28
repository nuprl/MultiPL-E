from yamlize import Object, Attribute, Sequence, StrList, Typed

class Problem(Object):
    name = Attribute(type=str)
    language = Attribute(type=str)
    prompt = Attribute(type=str)
    tests = Attribute(type=str)
    completions = Attribute(type=StrList)
    stop_tokens = Attribute(type=StrList)

class Result(Object):
    program = Attribute(type=str)
    stdout = Attribute(type=str)
    stderr = Attribute(type=str)
    exit_code = Attribute(type=int)
    status = Attribute(type=str)

class ResultList(Sequence):
    item_type = Result

class TestResults(Object):
    name = Attribute(type=str)
    language = Attribute(type=str)
    results = Attribute(type=ResultList)




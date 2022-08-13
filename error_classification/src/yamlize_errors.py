from yamlize import Object, Attribute, Sequence, StrList, Typed

class Result(Object):
    program = Attribute(type=str)
    stdout = Attribute(type=str)
    stderr = Attribute(type=str)
    exit_code = Attribute(type=int)
    status = Attribute(type=str)
    timestamp = Attribute(type=int, default=0)

class ResultList(Sequence):
    item_type = Result

class TestResults(Object):
    name = Attribute(type=str)
    language = Attribute(type=str)
    results = Attribute(type=ResultList)




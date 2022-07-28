from yamlize import Object, Attribute, Sequence, StrList

class Problem(Object):
    name = Attribute(type=str)
    language = Attribute(type=str)
    prompt = Attribute(type=str)
    tests = Attribute(type=str)
    completions = Attribute(type=StrList)
    stop_tokens = Attribute(type=StrList)



from typing import List

def Strongest_Extension(class_name: str, extensions: List[str]) -> str:
    """You will be given the name of a class (a string) and a list of extensions.
    The extensions are to be used to load additional classes to the class. The
    strength of the extension is as follows: Let CAP be the number of the uppercase
    letters in the extension's name, and let SM be the number of lowercase letters 
    in the extension's name, the strength is given by the fraction CAP - SM. 
    You should find the strongest extension and return a string in this 
    format: ClassName.StrongestExtensionName.
    If there are two or more extensions with the same strength, you should
    choose the one that comes first in the list.
    For example, if you are given "Slices" as the class and a list of the
    extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
    return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension 
    (its strength is -1).
    Example:
    for Strongest_Extension('my_class', ['AA', 'Be', 'CC']) == 'my_class.AA'
    """
    # your code here
    return '{}.{}'.format(class_name, max(extensions, key=lambda x: (sum(1 for c in x if c.isupper()), sum(1 for c in x if c.islower())) ))


def check(candidate):
    assert candidate('Watashi', ['tEN', 'niNE', 'eIGHt8OKe']) == 'Watashi.eIGHt8OKe'
    assert candidate('Boku123', ['nani', 'NazeDa', 'YEs.WeCaNe', '32145tggg']) == 'Boku123.YEs.WeCaNe'
    assert candidate('__YESIMHERE', ['t', 'eMptY', 'nothing', 'zeR00', 'NuLl__', '123NoooneB321']) == '__YESIMHERE.NuLl__'
    assert candidate('K', ['Ta', 'TAR', 't234An', 'cosSo']) == 'K.TAR'
    assert candidate('__HAHA', ['Tab', '123', '781345', '-_-']) == '__HAHA.123'
    assert candidate('YameRore', ['HhAas', 'okIWILL123', 'WorkOut', 'Fails', '-_-']) == 'YameRore.okIWILL123'
    assert candidate('finNNalLLly', ['Die', 'NowW', 'Wow', 'WoW']) == 'finNNalLLly.WoW'
    assert candidate('_', ['Bb', '91245']) == '_.Bb'
    assert candidate('Sp', ['671235', 'Bb']) == 'Sp.671235'

def test_check():
    check(Strongest_Extension)

test_check()

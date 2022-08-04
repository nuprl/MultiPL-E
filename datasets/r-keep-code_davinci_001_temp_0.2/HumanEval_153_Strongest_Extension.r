# You will be given the name of a class (a string) and a list of extensions.
# The extensions are to be used to load additional classes to the class. The
# strength of the extension is as follows: Let CAP be the number of the uppercase
# letters in the extension's name, and let SM be the number of lowercase letters 
# in the extension's name, the strength is given by the fraction CAP - SM. 
# You should find the strongest extension and return a string in this 
# format: ClassName.StrongestExtensionName.
# If there are two or more extensions with the same strength, you should
# choose the one that comes first in the list.
# For example, if you are given "Slices" as the class and a list of the
# extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
# return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension 
# (its strength is -1).
# Example:
# >>> Strongest_Extension('my_class', ['AA', 'Be', 'CC'])
# 'my_class.AA'
Strongest_Extension <- function(class_name, extensions) {
    # your code here
}


test_humaneval <- function() {
candidate <- Strongest_Extension
    if(!identical(candidate('Watashi', c('tEN', 'niNE', 'eIGHt8OKe')), 'Watashi.eIGHt8OKe')){quit('no', 1)}
    if(!identical(candidate('Boku123', c('nani', 'NazeDa', 'YEs.WeCaNe', '32145tggg')), 'Boku123.YEs.WeCaNe')){quit('no', 1)}
    if(!identical(candidate('__YESIMHERE', c('t', 'eMptY', 'nothing', 'zeR00', 'NuLl__', '123NoooneB321')), '__YESIMHERE.NuLl__')){quit('no', 1)}
    if(!identical(candidate('K', c('Ta', 'TAR', 't234An', 'cosSo')), 'K.TAR')){quit('no', 1)}
    if(!identical(candidate('__HAHA', c('Tab', '123', '781345', '-_-')), '__HAHA.123')){quit('no', 1)}
    if(!identical(candidate('YameRore', c('HhAas', 'okIWILL123', 'WorkOut', 'Fails', '-_-')), 'YameRore.okIWILL123')){quit('no', 1)}
    if(!identical(candidate('finNNalLLly', c('Die', 'NowW', 'Wow', 'WoW')), 'finNNalLLly.WoW')){quit('no', 1)}
    if(!identical(candidate('_', c('Bb', '91245')), '_.Bb')){quit('no', 1)}
    if(!identical(candidate('Sp', c('671235', 'Bb')), 'Sp.671235')){quit('no', 1)}
}
test_humaneval()
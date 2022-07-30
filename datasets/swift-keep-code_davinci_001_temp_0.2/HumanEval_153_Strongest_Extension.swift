// You will be given the name of a class (a string) and a list of extensions.
// The extensions are to be used to load additional classes to the class. The
// strength of the extension is as follows: Let CAP be the number of the uppercase
// letters in the extension's name, and let SM be the number of lowercase letters 
// in the extension's name, the strength is given by the fraction CAP - SM. 
// You should find the strongest extension and return a string in this 
// format: ClassName.StrongestExtensionName.
// If there are two or more extensions with the same strength, you should
// choose the one that comes first in the list.
// For example, if you are given "Slices" as the class and a list of the
// extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
// return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension 
// (its strength is -1).
// Example:
// for Strongest_Extension('my_class', ['AA', 'Be', 'CC']) == 'my_class.AA'
func Strongest_Extension(class_name: String, extensions: [String]) -> String {
	fatalError("unimplemented")

}

assert(Strongest_Extension(class_name: Watashi, extensions: [tEN, niNE, eIGHt8OKe]) == Watashi.eIGHt8OKe)
assert(Strongest_Extension(class_name: Boku123, extensions: [nani, NazeDa, YEs.WeCaNe, 32145tggg]) == Boku123.YEs.WeCaNe)
assert(Strongest_Extension(class_name: __YESIMHERE, extensions: [t, eMptY, nothing, zeR00, NuLl__, 123NoooneB321]) == __YESIMHERE.NuLl__)
assert(Strongest_Extension(class_name: K, extensions: [Ta, TAR, t234An, cosSo]) == K.TAR)
assert(Strongest_Extension(class_name: __HAHA, extensions: [Tab, 123, 781345, -_-]) == __HAHA.123)
assert(Strongest_Extension(class_name: YameRore, extensions: [HhAas, okIWILL123, WorkOut, Fails, -_-]) == YameRore.okIWILL123)
assert(Strongest_Extension(class_name: finNNalLLly, extensions: [Die, NowW, Wow, WoW]) == finNNalLLly.WoW)
assert(Strongest_Extension(class_name: _, extensions: [Bb, 91245]) == _.Bb)
assert(Strongest_Extension(class_name: Sp, extensions: [671235, Bb]) == Sp.671235)
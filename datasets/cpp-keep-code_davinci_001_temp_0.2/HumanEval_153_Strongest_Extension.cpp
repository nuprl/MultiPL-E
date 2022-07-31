#include<assert.h>
#include<bits/stdc++.h>
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
std::string Strongest_Extension(std::string class_name, std::vector<std::string> extensions) {
    std::string result = class_name;
    int max_strength = -1;
    for (auto extension : extensions) {
        int cap = 0;
        int sm = 0;
        for (auto c : extension) {
            if (std::isupper(c)) {
                cap++;
            } else {
                sm++;
            }
        }
        int strength = cap - sm;
        if (strength > max_strength) {
            max_strength = strength;
            result = class_name + "." + extension;
        }
    }
    return result;

}
int main() {
    auto candidate = Strongest_Extension;
    assert(candidate(("Watashi"), (std::vector<std::string>({(std::string)"tEN", (std::string)"niNE", (std::string)"eIGHt8OKe"}))) == ("Watashi.eIGHt8OKe"));
    assert(candidate(("Boku123"), (std::vector<std::string>({(std::string)"nani", (std::string)"NazeDa", (std::string)"YEs.WeCaNe", (std::string)"32145tggg"}))) == ("Boku123.YEs.WeCaNe"));
    assert(candidate(("__YESIMHERE"), (std::vector<std::string>({(std::string)"t", (std::string)"eMptY", (std::string)"nothing", (std::string)"zeR00", (std::string)"NuLl__", (std::string)"123NoooneB321"}))) == ("__YESIMHERE.NuLl__"));
    assert(candidate(("K"), (std::vector<std::string>({(std::string)"Ta", (std::string)"TAR", (std::string)"t234An", (std::string)"cosSo"}))) == ("K.TAR"));
    assert(candidate(("__HAHA"), (std::vector<std::string>({(std::string)"Tab", (std::string)"123", (std::string)"781345", (std::string)"-_-"}))) == ("__HAHA.123"));
    assert(candidate(("YameRore"), (std::vector<std::string>({(std::string)"HhAas", (std::string)"okIWILL123", (std::string)"WorkOut", (std::string)"Fails", (std::string)"-_-"}))) == ("YameRore.okIWILL123"));
    assert(candidate(("finNNalLLly"), (std::vector<std::string>({(std::string)"Die", (std::string)"NowW", (std::string)"Wow", (std::string)"WoW"}))) == ("finNNalLLly.WoW"));
    assert(candidate(("_"), (std::vector<std::string>({(std::string)"Bb", (std::string)"91245"}))) == ("_.Bb"));
    assert(candidate(("Sp"), (std::vector<std::string>({(std::string)"671235", (std::string)"Bb"}))) == ("Sp.671235"));
}

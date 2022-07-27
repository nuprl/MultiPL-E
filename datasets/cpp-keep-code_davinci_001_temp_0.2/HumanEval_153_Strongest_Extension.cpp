#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
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
    std::map<std::string, int> strength;
    for (auto& ext : extensions) {
        int cap = 0;
        int sm = 0;
        for (auto& c : ext) {
            if (c >= 'A' && c <= 'Z') {
                cap++;
            } else if (c >= 'a' && c <= 'z') {
                sm++;
            }
        }
        strength[ext] = cap - sm;
    }
    auto max_strength = std::max_element(strength.begin(), strength.end(), [](auto& a, auto& b) {
        return a.second < b.second;
    });
    return class_name + "." + max_strength->first;
}


int main() {
    auto candidate = Strongest_Extension;
    assert(candidate(("Watashi"), (std::vector<std::string>({"tEN", "niNE", "eIGHt8OKe"}))) == ("Watashi.eIGHt8OKe"));
    assert(candidate(("Boku123"), (std::vector<std::string>({"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}))) == ("Boku123.YEs.WeCaNe"));
    assert(candidate(("__YESIMHERE"), (std::vector<std::string>({"t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321"}))) == ("__YESIMHERE.NuLl__"));
    assert(candidate(("K"), (std::vector<std::string>({"Ta", "TAR", "t234An", "cosSo"}))) == ("K.TAR"));
    assert(candidate(("__HAHA"), (std::vector<std::string>({"Tab", "123", "781345", "-_-"}))) == ("__HAHA.123"));
    assert(candidate(("YameRore"), (std::vector<std::string>({"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}))) == ("YameRore.okIWILL123"));
    assert(candidate(("finNNalLLly"), (std::vector<std::string>({"Die", "NowW", "Wow", "WoW"}))) == ("finNNalLLly.WoW"));
    assert(candidate(("_"), (std::vector<std::string>({"Bb", "91245"}))) == ("_.Bb"));
    assert(candidate(("Sp"), (std::vector<std::string>({"671235", "Bb"}))) == ("Sp.671235"));
}
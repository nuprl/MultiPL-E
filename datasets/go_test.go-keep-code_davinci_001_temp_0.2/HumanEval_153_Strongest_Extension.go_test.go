package Strongest_Extension_test

import (
    "testing"
    "fmt"
)

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
func Strongest_Extension(class_name string, extensions []string) string {
    var strongest_extension string
    var strength float64
    for _, extension := range extensions {
        var cap_count int
        var sm_count int
        for _, char := range extension {
            if char >= 'A' && char <= 'Z' {
                cap_count++
            } else if char >= 'a' && char <= 'z' {
                sm_count++
            }
        }
        ext_strength := float64(cap_count - sm_count)
        if ext_strength > strength {
            strength = ext_strength
            strongest_extension = extension
        } else if ext_strength == strength {
            if extension < strongest_extension {
                strongest_extension = extension
            }
        }
    }
    return fmt.Sprintf("%s.%s", class_name, strongest_extension)
}


func TestStrongest_Extension(t *testing.T) {
  candidate := Strongest_Extension
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate("Watashi", []string{"tEN", "niNE", "eIGHt8OKe"}), expected: "Watashi.eIGHt8OKe" },
     { actual: candidate("Boku123", []string{"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}), expected: "Boku123.YEs.WeCaNe" },
     { actual: candidate("__YESIMHERE", []string{"t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321"}), expected: "__YESIMHERE.NuLl__" },
     { actual: candidate("K", []string{"Ta", "TAR", "t234An", "cosSo"}), expected: "K.TAR" },
     { actual: candidate("__HAHA", []string{"Tab", "123", "781345", "-_-"}), expected: "__HAHA.123" },
     { actual: candidate("YameRore", []string{"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}), expected: "YameRore.okIWILL123" },
     { actual: candidate("finNNalLLly", []string{"Die", "NowW", "Wow", "WoW"}), expected: "finNNalLLly.WoW" },
     { actual: candidate("_", []string{"Bb", "91245"}), expected: "_.Bb" },
     { actual: candidate("Sp", []string{"671235", "Bb"}), expected: "Sp.671235" },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}

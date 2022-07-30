import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You will be given the name of a class (a string) and a list of extensions.
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
    public static String Strongest_Extension(String class_name, ArrayList<String> extensions) {
        // your code here
        int max = 0;
        String result = null;
        for (String ext : extensions) {
            int cap = 0;
            int sm = 0;
            for (int i = 0; i < ext.length(); i++) {
                char c = ext.charAt(i);
                if (Character.isUpperCase(c)) {
                    cap++;
                } else {
                    sm++;
                }
            }
            double strength = (double) cap - (double) sm;
            if (strength > max) {
                max = strength;
                result = class_name + "." + ext;
            }
        }
        return result;
    }
    public static void main(String[] args) {
        ArrayList<String> extensions = new ArrayList<String>();
        extensions.add("SErviNGSliCes");
        extensions.add("Cheese");
        extensions.add("StuFfed");
        System.out.println(Strongest_Extension("my_class", extensions));
    }
}

    }
    public static void main(String[] args) {
    Strongest_Extension(("Watashi"), (new ArrayList<String>(Arrays.asList((String)"tEN", (String)"niNE", (String)"eIGHt8OKe")))).equals(("Watashi.eIGHt8OKe"));
    Strongest_Extension(("Boku123"), (new ArrayList<String>(Arrays.asList((String)"nani", (String)"NazeDa", (String)"YEs.WeCaNe", (String)"32145tggg")))).equals(("Boku123.YEs.WeCaNe"));
    Strongest_Extension(("__YESIMHERE"), (new ArrayList<String>(Arrays.asList((String)"t", (String)"eMptY", (String)"nothing", (String)"zeR00", (String)"NuLl__", (String)"123NoooneB321")))).equals(("__YESIMHERE.NuLl__"));
    Strongest_Extension(("K"), (new ArrayList<String>(Arrays.asList((String)"Ta", (String)"TAR", (String)"t234An", (String)"cosSo")))).equals(("K.TAR"));
    Strongest_Extension(("__HAHA"), (new ArrayList<String>(Arrays.asList((String)"Tab", (String)"123", (String)"781345", (String)"-_-")))).equals(("__HAHA.123"));
    Strongest_Extension(("YameRore"), (new ArrayList<String>(Arrays.asList((String)"HhAas", (String)"okIWILL123", (String)"WorkOut", (String)"Fails", (String)"-_-")))).equals(("YameRore.okIWILL123"));
    Strongest_Extension(("finNNalLLly"), (new ArrayList<String>(Arrays.asList((String)"Die", (String)"NowW", (String)"Wow", (String)"WoW")))).equals(("finNNalLLly.WoW"));
    Strongest_Extension(("_"), (new ArrayList<String>(Arrays.asList((String)"Bb", (String)"91245")))).equals(("_.Bb"));
    Strongest_Extension(("Sp"), (new ArrayList<String>(Arrays.asList((String)"671235", (String)"Bb")))).equals(("Sp.671235"));
    }

}

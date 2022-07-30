import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function that accepts a list of strings.
    // The list contains different words. Return the word with maximum number
    // of unique characters. If multiple strings have maximum number of unique
    // characters, return the one which comes first in lexicographical order.
    // find_max(["name", "of", "string"]) == "string"
    // find_max(["name", "enam", "game"]) == "enam"
    // find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
    public static String find_max(ArrayList<String> words) {
        String max = "";
        for (String word : words) {
            if (word.length() > max.length()) {
                max = word;
            }
        }
        return max;
    }
    // Write a function that accepts a list of strings.
    // The list contains different words. Return the word with maximum number
    // of unique characters. If multiple strings have maximum number of unique
    // characters, return the one which comes first in lexicographical order.
    // find_max(["name", "of", "string"]) == "string"
    // find_max(["name", "enam", "game"]) == "enam"
    // find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
    public static String find_max(ArrayList<String> words) {
        String max = "";
        for (String word : words) {
            if (word.length() > max.length()) {
                max = word;
            }
        }
        return max;
    }
    // Write a function that accepts a list of strings.
    // The list contains different words. Return the word with maximum number
    // of unique characters. If multiple strings have maximum number of unique
    // characters, return the one which comes first in lexicographical order.
    // find_max(["name", "of", "string"]) == "string"
    // find_max(["name", "enam", "game"]) == "enam"
    // find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
    public static String find_max(ArrayList<String> words) {
        String max = "";
        for (String word : words) {
            if (word.length() > max.length()) {
                max = word;
            }
        }
        return max;
    }
    // Write a function that accepts a list of strings.
    // The list contains different words. Return the word with maximum number
    // of unique characters. If multiple strings have maximum number of unique
    // characters, return the one which comes first in lexicographical order

    }
    public static void main(String[] args) {
    find_max((new ArrayList<String>(Arrays.asList((String)"name", (String)"of", (String)"string")))).equals(("string"));
    find_max((new ArrayList<String>(Arrays.asList((String)"name", (String)"enam", (String)"game")))).equals(("enam"));
    find_max((new ArrayList<String>(Arrays.asList((String)"aaaaaaa", (String)"bb", (String)"cc")))).equals(("aaaaaaa"));
    find_max((new ArrayList<String>(Arrays.asList((String)"abc", (String)"cba")))).equals(("abc"));
    find_max((new ArrayList<String>(Arrays.asList((String)"play", (String)"this", (String)"game", (String)"of", (String)"footbott")))).equals(("footbott"));
    find_max((new ArrayList<String>(Arrays.asList((String)"we", (String)"are", (String)"gonna", (String)"rock")))).equals(("gonna"));
    find_max((new ArrayList<String>(Arrays.asList((String)"we", (String)"are", (String)"a", (String)"mad", (String)"nation")))).equals(("nation"));
    find_max((new ArrayList<String>(Arrays.asList((String)"this", (String)"is", (String)"a", (String)"prrk")))).equals(("this"));
    find_max((new ArrayList<String>(Arrays.asList((String)"b")))).equals(("b"));
    find_max((new ArrayList<String>(Arrays.asList((String)"play", (String)"play", (String)"play")))).equals(("play"));
    }

}

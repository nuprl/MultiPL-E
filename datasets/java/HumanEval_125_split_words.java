import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
    // should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
    // alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
    // Examples
    // split_words("Hello world!") ➞ ["Hello", "world!"]
    // split_words("Hello,world!") ➞ ["Hello", "world!"]
    // split_words("abcdef") == 3
    public static Union_ArrayList_String__long split_words(String txt) {
        String[] words = txt.split("\\s+");
        if (words.length == 1) {
            String[] words2 = txt.split(",");
            if (words2.length == 1) {
                int count = 0;
                for (int i = 0; i < txt.length(); i++) {
                    if (txt.charAt(i) != ' ' && txt.charAt(i) != ',') {
                        if (txt.charAt(i) < 'a' || txt.charAt(i) > 'z') {
                            count++;
                        } else {
                            if (txt.charAt(i) - 'a' % 2 != 0) {
                                count++;
                            }
                        }
                    }
                }
                return new Union_ArrayList_String__long(Arrays.asList(words2), count);
            }
        }
        return new Union_ArrayList_String__long(Arrays.asList(words), 0);
    }
    public static class Union_ArrayList_String__long {
        private ArrayList<String> _0;
        private long _1;
        public Union_ArrayList_String__long(ArrayList<String> _0, long _1) {
            this._0 = _0;
            this._1 = _1;
        }
        public ArrayList<String> get_0() {
            return _0;
        }
        public long get_1() {
            return _1;
        }
    }
    public static void main(String[] args) {
        System.out.println(split_words("Hello world!"));
        System.out.println(split_words("Hello,world!"));
        System.out.println(split_words("abcdef"));
    }
}

    }
    public static void main(String[] args) {
    split_words(("Hello world!")).equals((new Union_ArrayList_String__long(Arrays.asList((String)"Hello", (String)"world!"))));
    split_words(("Hello,world!")).equals((new Union_ArrayList_String__long(Arrays.asList((String)"Hello", (String)"world!"))));
    split_words(("Hello world,!")).equals((new Union_ArrayList_String__long(Arrays.asList((String)"Hello", (String)"world,!"))));
    split_words(("Hello,Hello,world !")).equals((new Union_ArrayList_String__long(Arrays.asList((String)"Hello,Hello,world", (String)"!"))));
    split_words(("abcdef")).equals((Union_ArrayList_String__long(3l)));
    split_words(("aaabb")).equals((Union_ArrayList_String__long(2l)));
    split_words(("aaaBb")).equals((Union_ArrayList_String__long(1l)));
    split_words(("")).equals((Union_ArrayList_String__long(0l)));
    }

}

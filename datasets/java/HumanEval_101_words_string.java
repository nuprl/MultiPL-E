import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You will be given a string of words separated by commas or spaces. Your task is
    // to split the string into words and return an array of the words.
    // For example:
    // words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
    // words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
    public static ArrayList<String> words_string(String s) {
        String[] words = s.split(", | ");
        ArrayList<String> list = new ArrayList<>();
        for (String word : words) {
            list.add(word);
        }
        return list;
    }
    // You will be given a string of words separated by commas or spaces. Your task is
    // to split the string into words and return an array of the words.
    // For example:
    // words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
    // words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
    public static ArrayList<String> words_string(String s) {
        String[] words = s.split(", | ");
        ArrayList<String> list = new ArrayList<>();
        for (String word : words) {
            list.add(word);
        }
        return list;
    }
    // You will be given a string of words separated by commas or spaces. Your task is
    // to split the string into words and return an array of the words.
    // For example:
    // words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
    // words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
    public static ArrayList<String> words_string(String s) {
        String[] words = s.split(", | ");
        ArrayList<String> list = new ArrayList<>();
        for (String word : words) {
            list.add(word);
        }
        return list;
    }
    // You will be given a string of words separated by commas or spaces. Your task is
    // to split the string into words and return an array of the words.
    // For example:
    // words_string("Hi, my name is John") == ["Hi", "my", "name",

    }
    public static void main(String[] args) {
    words_string(("Hi, my name is John")).equals((new ArrayList<String>(Arrays.asList((String)"Hi", (String)"my", (String)"name", (String)"is", (String)"John"))));
    words_string(("One, two, three, four, five, six")).equals((new ArrayList<String>(Arrays.asList((String)"One", (String)"two", (String)"three", (String)"four", (String)"five", (String)"six"))));
    words_string(("Hi, my name")).equals((new ArrayList<String>(Arrays.asList((String)"Hi", (String)"my", (String)"name"))));
    words_string(("One,, two, three, four, five, six,")).equals((new ArrayList<String>(Arrays.asList((String)"One", (String)"two", (String)"three", (String)"four", (String)"five", (String)"six"))));
    words_string(("")).equals((new ArrayList<String>(Arrays.asList())));
    words_string(("ahmed     , gamal")).equals((new ArrayList<String>(Arrays.asList((String)"ahmed", (String)"gamal"))));
    }

}

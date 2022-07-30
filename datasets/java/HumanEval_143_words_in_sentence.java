import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given a string representing a sentence,
    // the sentence contains some words separated by a space,
    // and you have to return a string that contains the words from the original sentence,
    // whose lengths are prime numbers,
    // the order of the words in the new string should be the same as the original one.
    // Example 1:
    // Input: sentence = "This is a test"
    // Output: "is"
    // Example 2:
    // Input: sentence = "lets go for swimming"
    // Output: "go for"
    // Constraints:
    // * 1 <= len(sentence) <= 100
    // * sentence contains only letters
    public static String words_in_sentence(String sentence) {
        String[] words = sentence.split(" ");
        StringBuilder sb = new StringBuilder();
        for (String word : words) {
            if (isPrime(word.length())) {
                sb.append(word).append(" ");
            }
        }
        return sb.toString().trim();
    }
    public static boolean isPrime(int n) {
        if (n <= 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
    public static void main(String[] args) {
        System.out.println(words_in_sentence("This is a test"));
        System.out.println(words_in_sentence("lets go for swimming"));
    }
}

    }
    public static void main(String[] args) {
    words_in_sentence(("This is a test")).equals(("is"));
    words_in_sentence(("lets go for swimming")).equals(("go for"));
    words_in_sentence(("there is no place available here")).equals(("there is no place"));
    words_in_sentence(("Hi I am Hussein")).equals(("Hi am Hussein"));
    words_in_sentence(("go for it")).equals(("go for it"));
    words_in_sentence(("here")).equals((""));
    words_in_sentence(("here is")).equals(("is"));
    }

}

import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You'll be given a string of words, and your task is to count the number
    // of boredoms. A boredom is a sentence that starts with the word "I".
    // Sentences are delimited by '.', '?' or '!'.
    // For example:
    // >>> is_bored("Hello world")
    // 0
    // >>> is_bored("The sky is blue. The sun is shining. I love this weather")
    // 1
    public static long is_bored(String S) {
        return 0;
    }
    public static void main(String[] args) {
        System.out.println(is_bored("Hello world"));
        System.out.println(is_bored("The sky is blue. The sun is shining. I love this weather"));
    }
}

    }
    public static void main(String[] args) {
    assert(is_bored(("Hello world")) == (0l));
    assert(is_bored(("Is the sky blue?")) == (0l));
    assert(is_bored(("I love It !")) == (1l));
    assert(is_bored(("bIt")) == (0l));
    assert(is_bored(("I feel good today. I will be productive. will kill It")) == (2l));
    assert(is_bored(("You and I are going for a walk")) == (0l));
    }

}

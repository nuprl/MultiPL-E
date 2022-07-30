import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Implement a function that takes an non-negative integer and returns an array of the first n
    // integers that are prime numbers and less than n.
    // for example:
    // count_up_to(5) => [2,3]
    // count_up_to(11) => [2,3,5,7]
    // count_up_to(0) => []
    // count_up_to(20) => [2,3,5,7,11,13,17,19]
    // count_up_to(1) => []
    // count_up_to(18) => [2,3,5,7,11,13,17]
    public static ArrayList<Long> count_up_to(long n) {
        ArrayList<Long> result = new ArrayList<Long>();
        if (n < 2) {
            return result;
        }
        for (long i = 2; i < n; i++) {
            if (isPrime(i)) {
                result.add(i);
            }
        }
        return result;
    }
    public static boolean isPrime(long n) {
        if (n < 2) {
            return false;
        }
        for (long i = 2; i < n; i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
    public static void main(String[] args) {
        ArrayList<Long> result = count_up_to(5);
        System.out.println(result);
        result = count_up_to(11);
        System.out.println(result);
        result = count_up_to(0);
        System.out.println(result);
        result = count_up_to(20);
        System.out.println(result);
        result = count_up_to(1);
        System.out.println(result);
        result = count_up_to(18);
        System.out.println(result);
    }
}

    }
    public static void main(String[] args) {
    count_up_to((5l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l))));
    count_up_to((6l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)5l))));
    count_up_to((7l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)5l))));
    count_up_to((10l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)5l, (long)7l))));
    count_up_to((0l)).equals((new ArrayList<Long>(Arrays.asList())));
    count_up_to((22l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)5l, (long)7l, (long)11l, (long)13l, (long)17l, (long)19l))));
    count_up_to((1l)).equals((new ArrayList<Long>(Arrays.asList())));
    count_up_to((18l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)5l, (long)7l, (long)11l, (long)13l, (long)17l))));
    count_up_to((47l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)5l, (long)7l, (long)11l, (long)13l, (long)17l, (long)19l, (long)23l, (long)29l, (long)31l, (long)37l, (long)41l, (long)43l))));
    count_up_to((101l)).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)5l, (long)7l, (long)11l, (long)13l, (long)17l, (long)19l, (long)23l, (long)29l, (long)31l, (long)37l, (long)41l, (long)43l, (long)47l, (long)53l, (long)59l, (long)61l, (long)67l, (long)71l, (long)73l, (long)79l, (long)83l, (long)89l, (long)97l))));
    }

}

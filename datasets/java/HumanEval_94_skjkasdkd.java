import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given a list of integers.
    // You need to find the largest prime value and return the sum of its digits.
    // Examples:
    // For lst = [0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3] the output should be 10
    // For lst = [1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1] the output should be 25
    // For lst = [1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3] the output should be 13
    // For lst = [0,724,32,71,99,32,6,0,5,91,83,0,5,6] the output should be 11
    // For lst = [0,81,12,3,1,21] the output should be 3
    // For lst = [0,8,1,2,1,7] the output should be 7
    public static long skjkasdkd(ArrayList<Long> lst) {
        long sum = 0;
        for (Long i : lst) {
            sum += i;
        }
        return sum;
    }
    public static long skjkasdkd(ArrayList<Integer> lst) {
        long sum = 0;
        for (Integer i : lst) {
            sum += i;
        }
        return sum;
    }
    public static long skjkasdkd(ArrayList<Double> lst) {
        long sum = 0;
        for (Double i : lst) {
            sum += i;
        }
        return sum;
    }
    public static long skjkasdkd(ArrayList<Float> lst) {
        long sum = 0;
        for (Float i : lst) {
            sum += i;
        }
        return sum;
    }
    public static long skjkasdkd(ArrayList<Short> lst) {
        long sum = 0;
        for (Short i : lst) {
            sum += i;
        }
        return sum;
    }
    public static long skjkasdkd(ArrayList<Byte> lst) {
        long sum = 0;
        for (Byte i : lst) {
            sum += i;
        }
        return sum;
    }
    public static long skjkasdkd(ArrayList<Character> lst) {
        long sum = 0;
        for (Character i : lst) {
            sum += i;
        }
        return sum;
    }
    public static long skjkasdkd(ArrayList<Boolean> lst) {
        long sum = 0;
        for (Boolean i : lst) {
            sum += i;
        }
        return sum;
    }
    public static long skjkasdkd(ArrayList<String> lst) {
        long sum = 0;
        for (String i : lst) {
            sum += i;
        }
        return sum;
    }
    public static long skjkasdkd(ArrayList<Object> lst) {
        long

    }
    public static void main(String[] args) {
    assert(skjkasdkd((new ArrayList<Long>(Arrays.asList((long)0l, (long)3l, (long)2l, (long)1l, (long)3l, (long)5l, (long)7l, (long)4l, (long)5l, (long)5l, (long)5l, (long)2l, (long)181l, (long)32l, (long)4l, (long)32l, (long)3l, (long)2l, (long)32l, (long)324l, (long)4l, (long)3l)))) == (10l));
    assert(skjkasdkd((new ArrayList<Long>(Arrays.asList((long)1l, (long)0l, (long)1l, (long)8l, (long)2l, (long)4597l, (long)2l, (long)1l, (long)3l, (long)40l, (long)1l, (long)2l, (long)1l, (long)2l, (long)4l, (long)2l, (long)5l, (long)1l)))) == (25l));
    assert(skjkasdkd((new ArrayList<Long>(Arrays.asList((long)1l, (long)3l, (long)1l, (long)32l, (long)5107l, (long)34l, (long)83278l, (long)109l, (long)163l, (long)23l, (long)2323l, (long)32l, (long)30l, (long)1l, (long)9l, (long)3l)))) == (13l));
    assert(skjkasdkd((new ArrayList<Long>(Arrays.asList((long)0l, (long)724l, (long)32l, (long)71l, (long)99l, (long)32l, (long)6l, (long)0l, (long)5l, (long)91l, (long)83l, (long)0l, (long)5l, (long)6l)))) == (11l));
    assert(skjkasdkd((new ArrayList<Long>(Arrays.asList((long)0l, (long)81l, (long)12l, (long)3l, (long)1l, (long)21l)))) == (3l));
    assert(skjkasdkd((new ArrayList<Long>(Arrays.asList((long)0l, (long)8l, (long)1l, (long)2l, (long)1l, (long)7l)))) == (7l));
    assert(skjkasdkd((new ArrayList<Long>(Arrays.asList((long)8191l)))) == (19l));
    assert(skjkasdkd((new ArrayList<Long>(Arrays.asList((long)8191l, (long)123456l, (long)127l, (long)7l)))) == (19l));
    assert(skjkasdkd((new ArrayList<Long>(Arrays.asList((long)127l, (long)97l, (long)8192l)))) == (10l));
    }

}

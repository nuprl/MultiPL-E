import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given two positive integers n and m, and your task is to compute the
    // average of the integers from n through m (including n and m). 
    // Round the answer to the nearest integer and convert that to binary.
    // If n is greater than m, return -1.
    // Example:
    // rounded_avg(1, 5) => "0b11"
    // rounded_avg(7, 5) => -1
    // rounded_avg(10, 20) => "0b1111"
    // rounded_avg(20, 33) => "0b11010"
    public static Union_String_long rounded_avg(long n, long m) {
        if (n > m) {
            return new Union_String_long(-1L, "");
        }
        long sum = 0;
        for (long i = n; i <= m; i++) {
            sum += i;
        }
        double avg = sum / (m - n + 1);
        String binary = Long.toBinaryString(Math.round(avg));
        return new Union_String_long(binary, binary.length());
    }
    // You are given a list of numbers.
    // Return the number of distinct numbers in the list.
    // Example:
    // distinct_numbers([1, 1, 2, 3, 4, 4, 4, 5, 5, 6, 7, 7, 7, 7, 8, 8, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,

    }
    public static void main(String[] args) {
    rounded_avg((1l), (5l)).equals((Union_String_long("0b11")));
    rounded_avg((7l), (13l)).equals((Union_String_long("0b1010")));
    rounded_avg((964l), (977l)).equals((Union_String_long("0b1111001010")));
    rounded_avg((996l), (997l)).equals((Union_String_long("0b1111100100")));
    rounded_avg((560l), (851l)).equals((Union_String_long("0b1011000010")));
    rounded_avg((185l), (546l)).equals((Union_String_long("0b101101110")));
    rounded_avg((362l), (496l)).equals((Union_String_long("0b110101101")));
    rounded_avg((350l), (902l)).equals((Union_String_long("0b1001110010")));
    rounded_avg((197l), (233l)).equals((Union_String_long("0b11010111")));
    rounded_avg((7l), (5l)).equals((Union_String_long(-1l)));
    rounded_avg((5l), (1l)).equals((Union_String_long(-1l)));
    rounded_avg((5l), (5l)).equals((Union_String_long("0b101")));
    }

}

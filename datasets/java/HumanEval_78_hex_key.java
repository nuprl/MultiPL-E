import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You have been tasked to write a function that receives 
    // a hexadecimal number as a string and counts the number of hexadecimal 
    // digits that are primes (prime number, or a prime, is a natural number 
    // greater than 1 that is not a product of two smaller natural numbers).
    // Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
    // Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
    // So you have to determine a number of the following digits: 2, 3, 5, 7, 
    // B (=decimal 11), D (=decimal 13).
    // Note: you may assume the input is always correct or empty string, 
    // and symbols A,B,C,D,E,F are always uppercase.
    // Examples:
    // For num = "AB" the output should be 1.
    // For num = "1077E" the output should be 2.
    // For num = "ABED1A33" the output should be 4.
    // For num = "123456789ABCDEF0" the output should be 6.
    // For num = "2020" the output should be 2.
    public static long hex_key(String num) {
        int count = 0;
        for (int i = 0; i < num.length(); i++) {
            if (num.charAt(i) == '2' || num.charAt(i) == '3' || num.charAt(i) == '5' || num.charAt(i) == '7' || num.charAt(i) == 'B' || num.charAt(i) == 'D') {
                count++;
            }
        }
        return count;
    }
    // You are given an array of integers. You should find the sum of the 
    // elements with even indexes (0th, 2nd, 4th...) then multiply this 
    // sum by the last element of the array. Don't forget that the first 
    // element has an index of 0.
    // For an empty array, the result will always be 0 (zero).
    // Input: A list of integers.
    // Output: The number as an integer.
    // Example:
    // checkio([0, 1, 2, 3, 4, 5]) == 30
    // checkio([1, 3, 5]) == 30
    // checkio([6]) == 36
    // checkio([]) == 0
    public static int checkio(int[] array) {
        int sum = 0;
        for (int i = 0; i < array.length; i++) {
            if (i % 2 == 0) {
                sum += array[i];
            }
        }
        return sum * array[array.length - 1];
    }
    // You are given an array of integers. You should find the sum of the 
    // elements with even indexes (0th, 2nd, 4th...) then multiply this 
    // sum by the last element of the array. Don't forget that the first 
    // element has an index of 0.
    // For an empty array, the result will always be 0 (zero).
    // Input: A list of integers.
    // Output: The number as an integer.
    // Example:
    // checkio([0, 1, 2, 3, 4, 5]) == 30
    // checkio

    }
    public static void main(String[] args) {
    assert(hex_key(("AB")) == (1l));
    assert(hex_key(("1077E")) == (2l));
    assert(hex_key(("ABED1A33")) == (4l));
    assert(hex_key(("2020")) == (2l));
    assert(hex_key(("123456789ABCDEF0")) == (6l));
    assert(hex_key(("112233445566778899AABBCCDDEEFF00")) == (12l));
    }

}

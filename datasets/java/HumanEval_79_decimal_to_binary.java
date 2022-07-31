import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You will be given a number in decimal form and your task is to convert it to
    // binary format. The function should return a string, with each character representing a binary
    // number. Each character in the string will be '0' or '1'.
    // There will be an extra couple of characters 'db' at the beginning and at the end of the string.
    // The extra characters are there to help with the format.
    // Examples:
    // decimal_to_binary(15)   # returns "db1111db"
    // decimal_to_binary(32)   # returns "db100000db"
    public static String decimal_to_binary(long decimal) {
        String binary = "";
        while (decimal > 0) {
            binary = String.valueOf((decimal % 2)) + binary;
            decimal = decimal / 2;
        }
        return "db" + binary + "db";
    }
    // You will be given a string in binary format and your task is to convert it to decimal format.
    // The function should return a long, with each character representing a decimal number.
    // Each character in the string will be '0' or '1'.
    // There will be an extra couple of characters 'db' at the beginning and at the end of the string.
    // The extra characters are there to help with the format.
    // Examples:
    // binary_to_decimal("db1111db")   # returns 15
    // binary_to_decimal("db100000db")   # returns 32
    public static long binary_to_decimal(String binary) {
        long decimal = 0;
        for (int i = 2; i < binary.length() - 2; i++) {
            decimal = decimal * 2 + Integer.parseInt(String.valueOf(binary.charAt(i)));
        }
        return decimal;
    }
    // You will be given a string in binary format and your task is to convert it to hexadecimal format.
    // The function should return a string, with each character representing a hexadecimal number.
    // Each character in the string will be '0' or '1'.
    // There will be an extra couple of characters 'db' at the beginning and at the end of the string.
    // The extra characters are there to help with the format.
    // Examples:
    // binary_to_hex("db1111db")   # returns "f"
    // binary_to_hex("db100000db")   # returns "20"
    public static String binary_to_hex(String binary) {
        String hex = "";
        while (binary.length() > 0) {
            String temp = binary.substring(0, 4);
            binary = binary.substring(4);
            switch (temp) {
                case "0000":


    }
    public static void main(String[] args) {
    decimal_to_binary((0l)).equals(("db0db"));
    decimal_to_binary((32l)).equals(("db100000db"));
    decimal_to_binary((103l)).equals(("db1100111db"));
    decimal_to_binary((15l)).equals(("db1111db"));
    }

}

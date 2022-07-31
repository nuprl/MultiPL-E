import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a positive floating point number, it can be decomposed into
    // and integer part (largest integer smaller than given number) and decimals
    // (leftover part always smaller than 1).
    // Return the decimal part of the number.
    // >>> truncate_number(3.5)
    // 0.5
    public static float truncate_number(float number) {
        return number - Math.floor(number);
    }
    // Given a positive floating point number, it can be decomposed into
    // and integer part (largest integer smaller than given number) and decimals
    // (leftover part always smaller than 1).
    // Return the integer part of the number.
    // >>> truncate_number(3.5)
    // 3
    public static int truncate_number(int number) {
        return (int) Math.floor(number);
    }
    // Given a positive floating point number, it can be decomposed into
    // and integer part (largest integer smaller than given number) and decimals
    // (leftover part always smaller than 1).
    // Return the integer part of the number.
    // >>> truncate_number(3.5)
    // 3
    public static int truncate_number(double number) {
        return (int) Math.floor(number);
    }
    // Given a positive floating point number, it can be decomposed into
    // and integer part (largest integer smaller than given number) and decimals
    // (leftover part always smaller than 1).
    // Return the integer part of the number.
    // >>> truncate_number(3.5)
    // 3
    public static int truncate_number(float number) {
        return (int) Math.floor(number);
    }
    // Given a positive floating point number, it can be decomposed into
    // and integer part (largest integer smaller than given number) and decimals
    // (leftover part always smaller than 1).
    // Return the integer part of the number.
    // >>> truncate_number(3.5)
    // 3
    public static int truncate_number(long number) {
        return (int) Math.floor(number);
    }
    // Given a positive floating point number, it can be decomposed into
    // and integer part (largest integer smaller than given number) and decimals
    // (leftover part always smaller than 1).
    // Return the integer part of the number.
    // >>> truncate_number(3.5)
    // 3

    }
    public static void main(String[] args) {
    assert(truncate_number((3.5f)) == (0.5f));
    assert(truncate_number((1.25f)) == (0.25f));
    assert(truncate_number((123.0f)) == (0.0f));
    }

}

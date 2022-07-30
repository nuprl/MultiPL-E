import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // In this task, you will be given a string that represents a number of apples and oranges 
    // that are distributed in a basket of fruit this basket contains 
    // apples, oranges, and mango fruits. Given the string that represents the total number of 
    // the oranges and apples and an integer that represent the total number of the fruits 
    // in the basket return the number of the mango fruits in the basket.
    // for examble:
    // fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
    // fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
    // fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
    // fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
    public static long fruit_distribution(String s, long n) {
        // Write your code here
        String[] str = s.split(" ");
        long[] arr = new long[str.length];
        for (int i = 0; i < str.length; i++) {
            arr[i] = Long.parseLong(str[i]);
        }
        return n - arr[0] - arr[1];
    }
    // You are given a string that represents a number of apples and oranges that are distributed 
    // in a basket of fruit this basket contains apples, oranges, and mango fruits. 
    // Given the string that represents the total number of the oranges and apples and an integer 
    // that represent the total number of the fruits in the basket return the number of the mango 
    // fruits in the basket.
    // for examble:
    // fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
    // fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
    // fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
    // fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
    public static long fruit_distribution(String s, long n) {
        // Write your code here
        String[] str = s.split(" ");
        long[] arr = new long[str.length];
        for (int i = 0; i < str.length; i++) {
            arr[i] = Long.parseLong(str[i]);
        }
        return n - arr[0] - arr[1];
    }
    // You are given a string that represents a number of apples and oranges that are distributed 
    // in a basket of fruit this basket contains apples, oranges, and mango fruits. 
    // Given the string that represents the total number of the oranges and apples and an integer 
    // that represent the total number of the fruits in the basket return the number of the mango 
    // fruits in the basket.
    // for examble:
    // fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 =

    }
    public static void main(String[] args) {
    assert(fruit_distribution(("5 apples and 6 oranges"), (19l)) == (8l));
    assert(fruit_distribution(("5 apples and 6 oranges"), (21l)) == (10l));
    assert(fruit_distribution(("0 apples and 1 oranges"), (3l)) == (2l));
    assert(fruit_distribution(("1 apples and 0 oranges"), (3l)) == (2l));
    assert(fruit_distribution(("2 apples and 3 oranges"), (100l)) == (95l));
    assert(fruit_distribution(("2 apples and 3 oranges"), (5l)) == (0l));
    assert(fruit_distribution(("1 apples and 100 oranges"), (120l)) == (19l));
    }

}

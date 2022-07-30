import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You're a hungry rabbit, and you already have eaten a certain number of carrots,
    // but now you need to eat more carrots to complete the day's meals.
    // you should return an array of [ total number of eaten carrots after your meals,
    // the number of carrots left after your meals ]
    // if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
    // Example:
    // * eat(5, 6, 10) -> [11, 4]
    // * eat(4, 8, 9) -> [12, 1]
    // * eat(1, 10, 10) -> [11, 0]
    // * eat(2, 11, 5) -> [7, 0]
    // Variables:
    // @number : integer
    // the number of carrots that you have eaten.
    // @need : integer
    // the number of carrots that you need to eat.
    // @remaining : integer
    // the number of remaining carrots thet exist in stock
    // Constrain:
    // * 0 <= number <= 1000
    // * 0 <= need <= 1000
    // * 0 <= remaining <= 1000
    // Have fun :)
    public static ArrayList<Long> eat(long number, long need, long remaining) {
        ArrayList<Long> result = new ArrayList<Long>();
        if (remaining < need) {
            result.add(number + remaining);
            result.add(0L);
        } else {
            result.add(number + need);
            result.add(remaining - need);
        }
        return result;
    }
}

    }
    public static void main(String[] args) {
    eat((5l), (6l), (10l)).equals((new ArrayList<Long>(Arrays.asList((long)11l, (long)4l))));
    eat((4l), (8l), (9l)).equals((new ArrayList<Long>(Arrays.asList((long)12l, (long)1l))));
    eat((1l), (10l), (10l)).equals((new ArrayList<Long>(Arrays.asList((long)11l, (long)0l))));
    eat((2l), (11l), (5l)).equals((new ArrayList<Long>(Arrays.asList((long)7l, (long)0l))));
    eat((4l), (5l), (7l)).equals((new ArrayList<Long>(Arrays.asList((long)9l, (long)2l))));
    eat((4l), (5l), (1l)).equals((new ArrayList<Long>(Arrays.asList((long)5l, (long)0l))));
    }

}

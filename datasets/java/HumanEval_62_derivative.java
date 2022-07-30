import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // xs represent coefficients of a polynomial.
    // xs[0] + xs[1] * x + xs[2] * x^2 + ....
    // Return derivative of this polynomial in the same form.
    // >>> derivative([3, 1, 2, 4, 5])
    // [1, 4, 12, 20]
    // >>> derivative([1, 2, 3])
    // [2, 6]
    public static ArrayList<Long> derivative(ArrayList<Long> xs) {
        ArrayList<Long> result = new ArrayList<Long>();
        if (xs.size() == 0) {
            return result;
        }
        result.add(xs.get(1));
        for (int i = 2; i < xs.size(); i++) {
            result.add(i * xs.get(i));
        }
        return result;
    }
    public static void main(String[] args) {
        ArrayList<Long> xs = new ArrayList<Long>();
        xs.add(3);
        xs.add(1);
        xs.add(2);
        xs.add(4);
        xs.add(5);
        ArrayList<Long> result = derivative(xs);
        for (Long x : result) {
            System.out.println(x);
        }
    }
}

    }
    public static void main(String[] args) {
    derivative((new ArrayList<Long>(Arrays.asList((long)3l, (long)1l, (long)2l, (long)4l, (long)5l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)4l, (long)12l, (long)20l))));
    derivative((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)6l))));
    derivative((new ArrayList<Long>(Arrays.asList((long)3l, (long)2l, (long)1l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)2l))));
    derivative((new ArrayList<Long>(Arrays.asList((long)3l, (long)2l, (long)1l, (long)0l, (long)4l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)2l, (long)0l, (long)16l))));
    derivative((new ArrayList<Long>(Arrays.asList((long)1l)))).equals((new ArrayList<Long>(Arrays.asList())));
    }

}

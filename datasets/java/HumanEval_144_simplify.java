import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Your task is to implement a function that will simplify the expression
    // x * n. The function returns True if x * n evaluates to a whole number and False
    // otherwise. Both x and n, are string representation of a fraction, and have the following format,
    // <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
    // You can assume that x, and n are valid fractions, and do not have zero as denominator.
    // simplify("1/5", "5/1") = True
    // simplify("1/6", "2/1") = False
    // simplify("7/10", "10/2") = False
    public static boolean simplify(String x, String n) {
        int xNumerator = Integer.parseInt(x.split("/")[0]);
        int xDenominator = Integer.parseInt(x.split("/")[1]);
        int nNumerator = Integer.parseInt(n.split("/")[0]);
        int nDenominator = Integer.parseInt(n.split("/")[1]);
        int gcd = gcd(xDenominator, nDenominator);
        int xNewDenominator = xDenominator / gcd;
        int nNewDenominator = nDenominator / gcd;
        int xNewNumerator = xNumerator * nNewDenominator;
        int nNewNumerator = nNumerator * xNewDenominator;
        if (xNewNumerator % nNewNumerator == 0) {
            return true;
        } else {
            return false;
        }
    }
    public static int gcd(int a, int b) {
        if (b == 0) {
            return a;
        } else {
            return gcd(b, a % b);
        }
    }
    public static void main(String[] args) {
        System.out.println(simplify("1/5", "5/1"));
        System.out.println(simplify("1/6", "2/1"));
        System.out.println(simplify("7/10", "10/2"));
    }
}

    }
    public static void main(String[] args) {
    assert(simplify(("1/5"), ("5/1")) == (true));
    assert(simplify(("1/6"), ("2/1")) == (false));
    assert(simplify(("5/1"), ("3/1")) == (true));
    assert(simplify(("7/10"), ("10/2")) == (false));
    assert(simplify(("2/10"), ("50/10")) == (true));
    assert(simplify(("7/2"), ("4/2")) == (true));
    assert(simplify(("11/6"), ("6/1")) == (true));
    assert(simplify(("2/3"), ("5/2")) == (false));
    assert(simplify(("5/2"), ("3/5")) == (false));
    assert(simplify(("2/4"), ("8/4")) == (true));
    assert(simplify(("2/4"), ("4/2")) == (true));
    assert(simplify(("1/5"), ("5/1")) == (true));
    assert(simplify(("1/5"), ("1/5")) == (false));
    }

}

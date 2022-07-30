import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given a string s.
    // Your task is to check if the string is happy or not.
    // A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
    // For example:
    // is_happy(a) => False
    // is_happy(aa) => False
    // is_happy(abcd) => True
    // is_happy(aabb) => False
    // is_happy(adb) => True
    // is_happy(xyy) => False
    public static boolean is_happy(String s) {
        if (s.length() < 3) {
            return false;
        }
        int i = 0;
        while (i < s.length() - 2) {
            if (s.charAt(i) == s.charAt(i + 1) && s.charAt(i) == s.charAt(i + 2)) {
                return false;
            }
            i++;
        }
        return true;
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int i = 0; i < n; i++) {
            String s = scanner.next();
            System.out.println(is_happy(s));
        }
    }
}

    }
    public static void main(String[] args) {
    assert(is_happy(("a")) == (false));
    assert(is_happy(("aa")) == (false));
    assert(is_happy(("abcd")) == (true));
    assert(is_happy(("aabb")) == (false));
    assert(is_happy(("adb")) == (true));
    assert(is_happy(("xyy")) == (false));
    assert(is_happy(("iopaxpoi")) == (true));
    assert(is_happy(("iopaxioi")) == (false));
    }

}

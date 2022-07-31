import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
    // cycpattern_check("abcd","abd") => False
    // cycpattern_check("hello","ell") => True
    // cycpattern_check("whassup","psus") => False
    // cycpattern_check("abab","baa") => True
    // cycpattern_check("efef","eeff") => False
    // cycpattern_check("himenss","simen") => True
    public static boolean cycpattern_check(String a, String b) {
        if (a.length() < b.length()) {
            return false;
        }
        for (int i = 0; i < a.length(); i++) {
            if (a.substring(i, i + b.length()).equals(b)) {
                return true;
            }
        }
        return false;
    }
    // You are given a string. You need to return the number of times that a substring length 2 appears in the string and also as the last 2 chars of the string, so "hixxxhi" yields 1 (we won't count the end substring).
    // last2('hixxhi') => 1
    // last2('xaxxaxaxx') => 1
    // last2('axxxaaxx') => 2
    public static int last2(String str) {
        if (str.length() < 2) {
            return 0;
        }
        int count = 0;
        for (int i = 0; i < str.length() - 2; i++) {
            if (str.substring(i, i + 2).equals(str.substring(str.length() - 2))) {
                count++;
            }
        }
        return count;
    }
    // Given an array of ints, return the number of 9's in the array.
    // array_count9([1, 2, 9]) => 1
    // array_count9([1, 9, 9]) => 2
    // array_count9([1, 9, 9, 3, 9]) => 3
    public static int array_count9(int[] nums) {
        int count = 0;
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] == 9) {
                count++;
            }
        }
        return count;
    }
    // Given an array of ints, return True if one of the first 4 elements in the array is a 9. The array length may be less than 4.
    // array_front9([1, 2, 9, 3, 4]) => True
    // array_front9([1

    }
    public static void main(String[] args) {
    assert(cycpattern_check(("xyzw"), ("xyw")) == (false));
    assert(cycpattern_check(("yello"), ("ell")) == (true));
    assert(cycpattern_check(("whattup"), ("ptut")) == (false));
    assert(cycpattern_check(("efef"), ("fee")) == (true));
    assert(cycpattern_check(("abab"), ("aabb")) == (false));
    assert(cycpattern_check(("winemtt"), ("tinem")) == (true));
    }

}

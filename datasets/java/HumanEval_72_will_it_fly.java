import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function that returns True if the object q will fly, and False otherwise.
    // The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
    // Example:
    // will_it_fly([1, 2], 5) ➞ False 
    // # 1+2 is less than the maximum possible weight, but it's unbalanced.
    // will_it_fly([3, 2, 3], 1) ➞ False
    // # it's balanced, but 3+2+3 is more than the maximum possible weight.
    // will_it_fly([3, 2, 3], 9) ➞ True
    // # 3+2+3 is less than the maximum possible weight, and it's balanced.
    // will_it_fly([3], 5) ➞ True
    // # 3 is less than the maximum possible weight, and it's balanced.
    public static boolean will_it_fly(ArrayList<Long> q, long w) {
        if (q.size() == 0) {
            return true;
        }
        long sum = 0;
        for (Long i : q) {
            sum += i;
        }
        if (sum > w) {
            return false;
        }
        return isPalindrome(q);
    }
    public static boolean isPalindrome(ArrayList<Long> q) {
        if (q.size() == 0) {
            return true;
        }
        for (int i = 0; i < q.size() / 2; i++) {
            if (q.get(i) != q.get(q.size() - 1 - i)) {
                return false;
            }
        }
        return true;
    }
    public static void main(String[] args) {
        ArrayList<Long> q = new ArrayList<>();
        q.add(1L);
        q.add(2L);
        q.add(3L);
        q.add(2L);
        q.add(1L);
        System.out.println(will_it_fly(q, 5));
    }
}

    }
    public static void main(String[] args) {
    assert(will_it_fly((new ArrayList<Long>(Arrays.asList((long)3l, (long)2l, (long)3l))), (9l)) == (true));
    assert(will_it_fly((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l))), (5l)) == (false));
    assert(will_it_fly((new ArrayList<Long>(Arrays.asList((long)3l))), (5l)) == (true));
    assert(will_it_fly((new ArrayList<Long>(Arrays.asList((long)3l, (long)2l, (long)3l))), (1l)) == (false));
    assert(will_it_fly((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l))), (6l)) == (false));
    assert(will_it_fly((new ArrayList<Long>(Arrays.asList((long)5l))), (5l)) == (true));
    }

}

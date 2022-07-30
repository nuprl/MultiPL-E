import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You're given a list of deposit and withdrawal operations on a bank account that starts with
    // zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
    // at that point function should return True. Otherwise it should return False.
    // >>> below_zero([1, 2, 3])
    // False
    // >>> below_zero([1, 2, -4, 5])
    // True
    public static boolean below_zero(ArrayList<Long> operations) {
        long balance = 0;
        for (Long operation : operations) {
            balance += operation;
            if (balance < 0) {
                return true;
            }
        }
        return false;
    }
    // You're given a list of deposit and withdrawal operations on a bank account that starts with
    // zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
    // at that point function should return True. Otherwise it should return False.
    // >>> below_zero([1, 2, 3])
    // False
    // >>> below_zero([1, 2, -4, 5])
    // True
    public static boolean below_zero(ArrayList<Integer> operations) {
        int balance = 0;
        for (Integer operation : operations) {
            balance += operation;
            if (balance < 0) {
                return true;
            }
        }
        return false;
    }
    // You're given a list of deposit and withdrawal operations on a bank account that starts with
    // zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
    // at that point function should return True. Otherwise it should return False.
    // >>> below_zero([1, 2, 3])
    // False
    // >>> below_zero([1, 2, -4, 5])
    // True
    public static boolean below_zero(ArrayList<Double> operations) {
        double balance = 0;
        for (Double operation : operations) {
            balance += operation;
            if (balance < 0) {
                return true;
            }
        }
        return false;
    }
    // You're given a list of deposit and withdrawal operations on a bank account that starts with
    // zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
    // at that point function should return True. Otherwise it should return False.
    // >>> below_zero([1, 2, 3])
    // False
    // >>> below_zero([1, 2, -4, 5])
    // True
    public static boolean below_

    }
    public static void main(String[] args) {
    assert(below_zero((new ArrayList<Long>(Arrays.asList()))) == (false));
    assert(below_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)-3l, (long)1l, (long)2l, (long)-3l)))) == (false));
    assert(below_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)-4l, (long)5l, (long)6l)))) == (true));
    assert(below_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)-1l, (long)2l, (long)-2l, (long)5l, (long)-5l, (long)4l, (long)-4l)))) == (false));
    assert(below_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)-1l, (long)2l, (long)-2l, (long)5l, (long)-5l, (long)4l, (long)-5l)))) == (true));
    assert(below_zero((new ArrayList<Long>(Arrays.asList((long)1l, (long)-2l, (long)2l, (long)-2l, (long)5l, (long)-5l, (long)4l, (long)-4l)))) == (true));
    }

}

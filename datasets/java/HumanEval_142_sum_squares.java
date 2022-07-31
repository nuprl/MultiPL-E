import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // "
    // This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
    // multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
    // change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
    // Examples:
    // For lst = [1,2,3] the output should be 6
    // For lst = []  the output should be 0
    // For lst = [-1,-5,2,-1,-5]  the output should be -126
    public static long sum_squares(ArrayList<Long> lst) {
        long sum = 0;
        for (int i = 0; i < lst.size(); i++) {
            if (i % 3 == 0) {
                sum += lst.get(i) * lst.get(i);
            } else if (i % 4 == 0 && i % 3 != 0) {
                sum += lst.get(i) * lst.get(i) * lst.get(i);
            }
        }
        return sum;
    }
    // This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
    // multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
    // change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
    // Examples:
    // For lst = [1,2,3] the output should be 6
    // For lst = []  the output should be 0
    // For lst = [-1,-5,2,-1,-5]  the output should be -126
    public static long sum_squares(int[] lst) {
        long sum = 0;
        for (int i = 0; i < lst.length; i++) {
            if (i % 3 == 0) {
                sum += lst[i] * lst[i];
            } else if (i % 4 == 0 && i % 3 != 0) {
                sum += lst[i] * lst[i] * lst[i];
            }
        }
        return sum;
    }
    // This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
    // multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
    // change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
    // Examples:
   

    }
    public static void main(String[] args) {
    assert(sum_squares((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l)))) == (6l));
    assert(sum_squares((new ArrayList<Long>(Arrays.asList((long)1l, (long)4l, (long)9l)))) == (14l));
    assert(sum_squares((new ArrayList<Long>(Arrays.asList()))) == (0l));
    assert(sum_squares((new ArrayList<Long>(Arrays.asList((long)1l, (long)1l, (long)1l, (long)1l, (long)1l, (long)1l, (long)1l, (long)1l, (long)1l)))) == (9l));
    assert(sum_squares((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-1l, (long)-1l, (long)-1l, (long)-1l, (long)-1l, (long)-1l, (long)-1l, (long)-1l)))) == (-3l));
    assert(sum_squares((new ArrayList<Long>(Arrays.asList((long)0l)))) == (0l));
    assert(sum_squares((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-5l, (long)2l, (long)-1l, (long)-5l)))) == (-126l));
    assert(sum_squares((new ArrayList<Long>(Arrays.asList((long)-56l, (long)-99l, (long)1l, (long)0l, (long)-2l)))) == (3030l));
    assert(sum_squares((new ArrayList<Long>(Arrays.asList((long)-1l, (long)0l, (long)0l, (long)0l, (long)0l, (long)0l, (long)0l, (long)0l, (long)-1l)))) == (0l));
    assert(sum_squares((new ArrayList<Long>(Arrays.asList((long)-16l, (long)-9l, (long)-2l, (long)36l, (long)36l, (long)26l, (long)-20l, (long)25l, (long)-40l, (long)20l, (long)-4l, (long)12l, (long)-26l, (long)35l, (long)37l)))) == (-14196l));
    assert(sum_squares((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-3l, (long)17l, (long)-1l, (long)-15l, (long)13l, (long)-1l, (long)14l, (long)-14l, (long)-12l, (long)-5l, (long)14l, (long)-14l, (long)6l, (long)13l, (long)11l, (long)16l, (long)16l, (long)4l, (long)10l)))) == (-1448l));
    }

}

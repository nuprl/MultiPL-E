import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given a positive integer n. You have to create an integer array a of length n.
    // For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
    // Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
    // and a[i] + a[j] + a[k] is a multiple of 3.
    // Example :
    // Input: n = 5
    // Output: 1
    // Explanation: 
    // a = [1, 3, 7, 13, 21]
    // The only valid triple is (1, 7, 13).
    public static long get_max_triples(long n) {
        long count = 0;
        for (int i = 1; i < n; i++) {
            for (int j = i + 1; j < n; j++) {
                for (int k = j + 1; k < n; k++) {
                    if ((i * i + j * j + k * k) % 3 == 0) {
                        count++;
                    }
                }
            }
        }
        return count;
    }
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        long result = get_max_triples(n);
        System.out.println(result);
    }
}

    }
    public static void main(String[] args) {
    assert(get_max_triples((5l)) == (1l));
    assert(get_max_triples((6l)) == (4l));
    assert(get_max_triples((10l)) == (36l));
    assert(get_max_triples((100l)) == (53361l));
    }

}

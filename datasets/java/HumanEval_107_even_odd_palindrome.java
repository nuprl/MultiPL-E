import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a positive integer n, return a tuple that has the number of even and odd
    // integer palindromes that fall within the range(1, n), inclusive.
    // Example 1:
    // Input: 3
    // Output: (1, 2)
    // Explanation:
    // Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
    // Example 2:
    // Input: 12
    // Output: (4, 6)
    // Explanation:
    // Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
    // Note:
    // 1. 1 <= n <= 10^3
    // 2. returned tuple has the number of even and odd integer palindromes respectively.
    public static Pair<Long, Long> even_odd_palindrome(long n) {
        long even = 0, odd = 0;
        for (long i = 1; i <= n; i++) {
            if (isPalindrome(i)) {
                if (i % 2 == 0) {
                    even++;
                } else {
                    odd++;
                }
            }
        }
        return new Pair<>(even, odd);
    }
    private static boolean isPalindrome(long n) {
        String s = String.valueOf(n);
        for (int i = 0; i < s.length() / 2; i++) {
            if (s.charAt(i) != s.charAt(s.length() - 1 - i)) {
                return false;
            }
        }
        return true;
    }
    public static void main(String[] args) {
        System.out.println(even_odd_palindrome(12));
    }
}
Problem.main(null);


    }
    public static void main(String[] args) {
    even_odd_palindrome((123l)).equals((Pair.with(8l, 13l)));
    even_odd_palindrome((12l)).equals((Pair.with(4l, 6l)));
    even_odd_palindrome((3l)).equals((Pair.with(1l, 2l)));
    even_odd_palindrome((63l)).equals((Pair.with(6l, 8l)));
    even_odd_palindrome((25l)).equals((Pair.with(5l, 6l)));
    even_odd_palindrome((19l)).equals((Pair.with(4l, 6l)));
    even_odd_palindrome((9l)).equals((Pair.with(4l, 5l)));
    even_odd_palindrome((1l)).equals((Pair.with(0l, 1l)));
    }

}

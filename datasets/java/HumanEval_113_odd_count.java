import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a list of strings, where each string consists of only digits, return a list.
    // Each element i of the output should be "the number of odd elements in the
    // string i of the input." where all the i's should be replaced by the number
    // of odd digits in the i'th string of the input.
    // >>> odd_count(['1234567'])
    // ["the number of odd elements 4n the str4ng 4 of the 4nput."]
    // >>> odd_count(['3',"11111111"])
    // ["the number of odd elements 1n the str1ng 1 of the 1nput.",
    // "the number of odd elements 8n the str8ng 8 of the 8nput."]
    public static ArrayList<String> odd_count(ArrayList<String> lst) {
        ArrayList<String> result = new ArrayList<String>();
        for (String s : lst) {
            int count = 0;
            for (int i = 0; i < s.length(); i++) {
                if (Character.getNumericValue(s.charAt(i)) % 2 != 0) {
                    count++;
                }
            }
            result.add("the number of odd elements " + count + "n the str" + count + "g " + count + " of the " + count + "nput.");
        }
        return result;
    }
    // Given a list of strings, where each string consists of only digits, return a list.
    // Each element i of the output should be "the number of digits in the
    // string i of the input." where all the i's should be replaced by the number
    // of digits in the i'th string of the input.
    // >>> digit_count(['1234567'])
    // ["the number of digits 7 in the str7ng 7 of the 7nput."]
    // >>> digit_count(['3',"11111111"])
    // ["the number of digits 1 in the str1ng 1 of the 1nput.",
    // "the number of digits 8 in the str8ng 8 of the 8nput."]
    public static ArrayList<String> digit_count(ArrayList<String> lst) {
        ArrayList<String> result = new ArrayList<String>();
        for (String s : lst) {
            int count = 0;
            for (int i = 0; i < s.length(); i++) {
                count++;
            }
            result.add("the number of digits " + count + " in the str" + count + "g " + count + " of the " + count + "nput.");
        }
        return result;
    }
    // Given a list of strings, where each string consists of only digits, return a list.
    // Each element i of the output should be "the number of digits in the
    // string i of the input." where all the i's should be replaced by the number
    //

    }
    public static void main(String[] args) {
    odd_count((new ArrayList<String>(Arrays.asList((String)"1234567")))).equals((new ArrayList<String>(Arrays.asList((String)"the number of odd elements 4n the str4ng 4 of the 4nput."))));
    odd_count((new ArrayList<String>(Arrays.asList((String)"3", (String)"11111111")))).equals((new ArrayList<String>(Arrays.asList((String)"the number of odd elements 1n the str1ng 1 of the 1nput.", (String)"the number of odd elements 8n the str8ng 8 of the 8nput."))));
    odd_count((new ArrayList<String>(Arrays.asList((String)"271", (String)"137", (String)"314")))).equals((new ArrayList<String>(Arrays.asList((String)"the number of odd elements 2n the str2ng 2 of the 2nput.", (String)"the number of odd elements 3n the str3ng 3 of the 3nput.", (String)"the number of odd elements 2n the str2ng 2 of the 2nput."))));
    }

}

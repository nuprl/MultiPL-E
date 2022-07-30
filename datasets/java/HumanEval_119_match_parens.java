import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // You are given a list of two strings, both strings consist of open
    // parentheses '(' or close parentheses ')' only.
    // Your job is to check if it is possible to concatenate the two strings in
    // some order, that the resulting string will be good.
    // A string S is considered to be good if and only if all parentheses in S
    // are balanced. For example: the string '(())()' is good, while the string
    // '())' is not.
    // Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
    // Examples:
    // match_parens(['()(', ')']) == 'Yes'
    // match_parens([')', ')']) == 'No'
    public static String match_parens(ArrayList<String> lst) {
        // Write your code here
        return "";
    }
}

    }
    public static void main(String[] args) {
    match_parens((new ArrayList<String>(Arrays.asList((String)"()(", (String)")")))).equals(("Yes"));
    match_parens((new ArrayList<String>(Arrays.asList((String)")", (String)")")))).equals(("No"));
    match_parens((new ArrayList<String>(Arrays.asList((String)"(()(())", (String)"())())")))).equals(("No"));
    match_parens((new ArrayList<String>(Arrays.asList((String)")())", (String)"(()()(")))).equals(("Yes"));
    match_parens((new ArrayList<String>(Arrays.asList((String)"(())))", (String)"(()())((")))).equals(("Yes"));
    match_parens((new ArrayList<String>(Arrays.asList((String)"()", (String)"())")))).equals(("No"));
    match_parens((new ArrayList<String>(Arrays.asList((String)"(()(", (String)"()))()")))).equals(("Yes"));
    match_parens((new ArrayList<String>(Arrays.asList((String)"((((", (String)"((())")))).equals(("No"));
    match_parens((new ArrayList<String>(Arrays.asList((String)")(()", (String)"(()(")))).equals(("No"));
    match_parens((new ArrayList<String>(Arrays.asList((String)")(", (String)")(")))).equals(("No"));
    match_parens((new ArrayList<String>(Arrays.asList((String)"(", (String)")")))).equals(("Yes"));
    match_parens((new ArrayList<String>(Arrays.asList((String)")", (String)"(")))).equals(("Yes"));
    }

}

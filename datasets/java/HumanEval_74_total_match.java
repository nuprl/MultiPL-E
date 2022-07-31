import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function that accepts two lists of strings and returns the list that has 
    // total number of chars in the all strings of the list less than the other list.
    // if the two lists have the same number of chars, return the first list.
    // Examples
    // total_match([], []) ➞ []
    // total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
    // total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
    // total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
    // total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
    public static ArrayList<String> total_match(ArrayList<String> lst1, ArrayList<String> lst2) {
        int len1 = 0;
        int len2 = 0;
        for (String s : lst1) {
            len1 += s.length();
        }
        for (String s : lst2) {
            len2 += s.length();
        }
        if (len1 < len2) {
            return lst1;
        } else if (len1 > len2) {
            return lst2;
        } else {
            return lst1;
        }
    }
    public static void main(String[] args) {
        ArrayList<String> lst1 = new ArrayList<String>();
        ArrayList<String> lst2 = new ArrayList<String>();
        lst1.add("hi");
        lst1.add("admin");
        lst2.add("hI");
        lst2.add("Hi");
        System.out.println(total_match(lst1, lst2));
    }
}

    }
    public static void main(String[] args) {
    total_match((new ArrayList<String>(Arrays.asList())), (new ArrayList<String>(Arrays.asList()))).equals((new ArrayList<String>(Arrays.asList())));
    total_match((new ArrayList<String>(Arrays.asList((String)"hi", (String)"admin"))), (new ArrayList<String>(Arrays.asList((String)"hi", (String)"hi")))).equals((new ArrayList<String>(Arrays.asList((String)"hi", (String)"hi"))));
    total_match((new ArrayList<String>(Arrays.asList((String)"hi", (String)"admin"))), (new ArrayList<String>(Arrays.asList((String)"hi", (String)"hi", (String)"admin", (String)"project")))).equals((new ArrayList<String>(Arrays.asList((String)"hi", (String)"admin"))));
    total_match((new ArrayList<String>(Arrays.asList((String)"4"))), (new ArrayList<String>(Arrays.asList((String)"1", (String)"2", (String)"3", (String)"4", (String)"5")))).equals((new ArrayList<String>(Arrays.asList((String)"4"))));
    total_match((new ArrayList<String>(Arrays.asList((String)"hi", (String)"admin"))), (new ArrayList<String>(Arrays.asList((String)"hI", (String)"Hi")))).equals((new ArrayList<String>(Arrays.asList((String)"hI", (String)"Hi"))));
    total_match((new ArrayList<String>(Arrays.asList((String)"hi", (String)"admin"))), (new ArrayList<String>(Arrays.asList((String)"hI", (String)"hi", (String)"hi")))).equals((new ArrayList<String>(Arrays.asList((String)"hI", (String)"hi", (String)"hi"))));
    total_match((new ArrayList<String>(Arrays.asList((String)"hi", (String)"admin"))), (new ArrayList<String>(Arrays.asList((String)"hI", (String)"hi", (String)"hii")))).equals((new ArrayList<String>(Arrays.asList((String)"hi", (String)"admin"))));
    total_match((new ArrayList<String>(Arrays.asList())), (new ArrayList<String>(Arrays.asList((String)"this")))).equals((new ArrayList<String>(Arrays.asList())));
    total_match((new ArrayList<String>(Arrays.asList((String)"this"))), (new ArrayList<String>(Arrays.asList()))).equals((new ArrayList<String>(Arrays.asList())));
    }

}

import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given an array of integers, sort the integers that are between 1 and 9 inclusive,
    // reverse the resulting array, and then replace each digit by its corresponding name from
    // "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
    // For example:
    // arr = [2, 1, 1, 4, 5, 8, 2, 3]   
    // -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
    // -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
    // return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
    // If the array is empty, return an empty array:
    // arr = []
    // return []
    // If the array has any strange number ignore it:
    // arr = [1, -1 , 55] 
    // -> sort arr -> [-1, 1, 55]
    // -> reverse arr -> [55, 1, -1]
    // return = ['One']
    public static ArrayList<String> by_length(ArrayList<Long> arr) {
        ArrayList<String> result = new ArrayList<>();
        if (arr.size() == 0) {
            return result;
        }
        ArrayList<Long> arr1 = new ArrayList<>();
        for (Long i : arr) {
            if (i >= 1 && i <= 9) {
                arr1.add(i);
            }
        }
        Collections.sort(arr1);
        Collections.reverse(arr1);
        for (Long i : arr1) {
            switch (i) {
                case 1:
                    result.add("One");
                    break;
                case 2:
                    result.add("Two");
                    break;
                case 3:
                    result.add("Three");
                    break;
                case 4:
                    result.add("Four");
                    break;
                case 5:
                    result.add("Five");
                    break;
                case 6:
                    result.add("Six");
                    break;
                case 7:
                    result.add("Seven");
                    break;
                case 8:
                    result.add("Eight");
                    break;
                case 9:
                    result.add("Nine");
                    break;
            }
        }
        return result;
    }
    public static ArrayList<String> by_length(ArrayList<Integer> arr) {
        ArrayList<String> result = new ArrayList<>();
        if (arr.size() == 0) {
            return result;
        }
        ArrayList<Integer> arr1 = new ArrayList<>();
        for (Integer i : arr) {
            if (i >= 1 && i <= 9) {
                arr1.add(i);
            }
        }
        Collections.sort(arr1);
        Collections.reverse(arr1);
        for (Integer i : arr1) {
            switch (i) {
                case 1:
                    result.add("One");
                    break;
                case 2:
                    result.add("Two");
                    break;
                case 3:
                    result.add("Three");
                    break;
                case 4:
                    result.add("

    }
    public static void main(String[] args) {
    by_length((new ArrayList<Long>(Arrays.asList((long)2l, (long)1l, (long)1l, (long)4l, (long)5l, (long)8l, (long)2l, (long)3l)))).equals((new ArrayList<String>(Arrays.asList((String)"Eight", (String)"Five", (String)"Four", (String)"Three", (String)"Two", (String)"Two", (String)"One", (String)"One"))));
    by_length((new ArrayList<Long>(Arrays.asList()))).equals((new ArrayList<String>(Arrays.asList())));
    by_length((new ArrayList<Long>(Arrays.asList((long)1l, (long)-1l, (long)55l)))).equals((new ArrayList<String>(Arrays.asList((String)"One"))));
    by_length((new ArrayList<Long>(Arrays.asList((long)1l, (long)-1l, (long)3l, (long)2l)))).equals((new ArrayList<String>(Arrays.asList((String)"Three", (String)"Two", (String)"One"))));
    by_length((new ArrayList<Long>(Arrays.asList((long)9l, (long)4l, (long)8l)))).equals((new ArrayList<String>(Arrays.asList((String)"Nine", (String)"Eight", (String)"Four"))));
    }

}

import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Create a function which takes a string representing a file's name, and returns
    // 'Yes' if the the file's name is valid, and returns 'No' otherwise.
    // A file's name is considered to be valid if and only if all the following conditions 
    // are met:
    // - There should not be more than three digits ('0'-'9') in the file's name.
    // - The file's name contains exactly one dot '.'
    // - The substring before the dot should not be empty, and it starts with a letter from 
    // the latin alphapet ('a'-'z' and 'A'-'Z').
    // - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
    // Examples:
    // file_name_check("example.txt") # => 'Yes'
    // file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
    public static String file_name_check(String file_name) {
        String[] parts = file_name.split("\\.");
        if (parts.length != 2) {
            return "No";
        }
        String[] parts2 = parts[0].split("");
        if (parts2.length > 3) {
            return "No";
        }
        if (!parts2[0].matches("[a-zA-Z]")) {
            return "No";
        }
        if (parts[1].equals("txt") || parts[1].equals("exe") || parts[1].equals("dll")) {
            return "Yes";
        }
        return "No";
    }
    // Create a function which takes a string representing a file's name, and returns
    // 'Yes' if the the file's name is valid, and returns 'No' otherwise.
    // A file's name is considered to be valid if and only if all the following conditions 
    // are met:
    // - There should not be more than three digits ('0'-'9') in the file's name.
    // - The file's name contains exactly one dot '.'
    // - The substring before the dot should not be empty, and it starts with a letter from 
    // the latin alphapet ('a'-'z' and 'A'-'Z').
    // - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
    // Examples:
    // file_name_check("example.txt") # => 'Yes'
    // file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
    public static String file_name_check2(String file_name) {
        String[] parts = file_name.split("\\.");
        if (parts.length != 2) {
            return "No";
        }
        String[] parts2 = parts[0].split("");
        if (parts2.length > 3) {
            return "No";
        }
        if (!parts2[0].matches("[a-zA-Z]")) {
            return "

    }
    public static void main(String[] args) {
    file_name_check(("example.txt")).equals(("Yes"));
    file_name_check(("1example.dll")).equals(("No"));
    file_name_check(("s1sdf3.asd")).equals(("No"));
    file_name_check(("K.dll")).equals(("Yes"));
    file_name_check(("MY16FILE3.exe")).equals(("Yes"));
    file_name_check(("His12FILE94.exe")).equals(("No"));
    file_name_check(("_Y.txt")).equals(("No"));
    file_name_check(("?aREYA.exe")).equals(("No"));
    file_name_check(("/this_is_valid.dll")).equals(("No"));
    file_name_check(("this_is_valid.wow")).equals(("No"));
    file_name_check(("this_is_valid.txt")).equals(("Yes"));
    file_name_check(("this_is_valid.txtexe")).equals(("No"));
    file_name_check(("#this2_i4s_5valid.ten")).equals(("No"));
    file_name_check(("@this1_is6_valid.exe")).equals(("No"));
    file_name_check(("this_is_12valid.6exe4.txt")).equals(("No"));
    file_name_check(("all.exe.txt")).equals(("No"));
    file_name_check(("I563_No.exe")).equals(("Yes"));
    file_name_check(("Is3youfault.txt")).equals(("Yes"));
    file_name_check(("no_one#knows.dll")).equals(("Yes"));
    file_name_check(("1I563_Yes3.exe")).equals(("No"));
    file_name_check(("I563_Yes3.txtt")).equals(("No"));
    file_name_check(("final..txt")).equals(("No"));
    file_name_check(("final132")).equals(("No"));
    file_name_check(("_f4indsartal132.")).equals(("No"));
    file_name_check((".txt")).equals(("No"));
    file_name_check(("s.")).equals(("No"));
    }

}

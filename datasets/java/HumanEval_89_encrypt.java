import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Create a function encrypt that takes a string as an argument and
    // returns a string encrypted with the alphabet being rotated. 
    // The alphabet should be rotated in a manner such that the letters 
    // shift down by two multiplied to two places.
    // For example:
    // encrypt('hi') returns 'lm'
    // encrypt('asdfghjkl') returns 'ewhjklnop'
    // encrypt('gf') returns 'kj'
    // encrypt('et') returns 'ix'
    public static String encrypt(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c >= 'a' && c <= 'z') {
                c = (char) ((c - 'a' + 2) % 26 + 'a');
            } else if (c >= 'A' && c <= 'Z') {
                c = (char) ((c - 'A' + 2) % 26 + 'A');
            }
            sb.append(c);
        }
        return sb.toString();
    }
    // Create a function decrypt that takes a string as an argument and
    // returns a string decrypted with the alphabet being rotated. 
    // The alphabet should be rotated in a manner such that the letters 
    // shift down by two multiplied to two places.
    // For example:
    // decrypt('lm') returns 'hi'
    // decrypt('ewhjklnop') returns 'asdfghjkl'
    // decrypt('kj') returns 'gf'
    // decrypt('ix') returns 'et'
    public static String decrypt(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c >= 'a' && c <= 'z') {
                c = (char) ((c - 'a' - 2) % 26 + 'a');
            } else if (c >= 'A' && c <= 'Z') {
                c = (char) ((c - 'A' - 2) % 26 + 'A');
            }
            sb.append(c);
        }
        return sb.toString();
    }
    // Create a function encrypt that takes a string as an argument and
    // returns a string encrypted with the alphabet being rotated. 
    // The alphabet should be rotated in a manner such that the letters 
    // shift down by two multiplied to two places.
    // For example:
    // encrypt('hi') returns 'lm'
    //

    }
    public static void main(String[] args) {
    encrypt(("hi")).equals(("lm"));
    encrypt(("asdfghjkl")).equals(("ewhjklnop"));
    encrypt(("gf")).equals(("kj"));
    encrypt(("et")).equals(("ix"));
    encrypt(("faewfawefaewg")).equals(("jeiajeaijeiak"));
    encrypt(("hellomyfriend")).equals(("lippsqcjvmirh"));
    encrypt(("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh")).equals(("hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl"));
    encrypt(("a")).equals(("e"));
    }

}

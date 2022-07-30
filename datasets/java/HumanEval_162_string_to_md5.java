import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given a string 'text', return its md5 hash equivalent string.
    // If 'text' is an empty string, return None.
    // >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
    public static Optional<String> string_to_md5(String text) {
        if (text == null || text.isEmpty()) {
            return Optional.empty();
        }
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] md5 = md.digest(text.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : md5) {
                sb.append(String.format("%02x", b));
            }
            return Optional.of(sb.toString());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }
    // Given a string 'text', return its sha1 hash equivalent string.
    // If 'text' is an empty string, return None.
    // >>> string_to_sha1('Hello world') == '2ef7bde608ce5404e97d5f042f95f89f1c232871'
    public static Optional<String> string_to_sha1(String text) {
        if (text == null || text.isEmpty()) {
            return Optional.empty();
        }
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            byte[] sha1 = md.digest(text.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : sha1) {
                sb.append(String.format("%02x", b));
            }
            return Optional.of(sb.toString());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }
    // Given a string 'text', return its sha256 hash equivalent string.
    // If 'text' is an empty string, return None.
    // >>> string_to_sha256('Hello world') == '7f83b1657ff1fc53b92dc18148a1d65dfc2d4b1fa3d677284addd200126d9069'
    public static Optional<String> string_to

    }
    public static void main(String[] args) {
    string_to_md5(("Hello world")).equals(Optional.of("3e25960a79dbc69b674cd4ec67a72c62"));
    string_to_md5(("")).equals(Optional.empty());
    string_to_md5(("A B C")).equals(Optional.of("0ef78513b0cb8cef12743f5aeb35f888"));
    string_to_md5(("password")).equals(Optional.of("5f4dcc3b5aa765d61d8327deb882cf99"));
    }

}

import scala.math._
import scala.collection.mutable._
object Problem {
    // Given a string 'text', return its md5 hash equivalent string.
    // If 'text' is an empty string, return None.
    // >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
    def stringToMd5(text : String) : Option[String] = {
        if (text.length == 0) {
            return None
        }
        val md5 = java.security.MessageDigest.getInstance("MD5")
        val bytes = md5.digest(text.getBytes)
        val sb = new StringBuilder
        for (b <- bytes) {
            sb.append(Integer.toString((b & 0xff) + 0x100, 16).substring(1))
        }
        Some(sb.toString)

    }
    def main(args: Array[String]) = {
    assert(stringToMd5(("Hello world")).equals("3e25960a79dbc69b674cd4ec67a72c62"));
    assert(stringToMd5(("")).equals(None));
    assert(stringToMd5(("A B C")).equals("0ef78513b0cb8cef12743f5aeb35f888"));
    assert(stringToMd5(("password")).equals("5f4dcc3b5aa765d61d8327deb882cf99"));
    }

}

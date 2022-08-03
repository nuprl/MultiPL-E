import scala.math._
import scala.collection.mutable._
object Problem {
    // Create a function encrypt that takes a string as an argument and
    // returns a string encrypted with the alphabet being rotated. 
    // The alphabet should be rotated in a manner such that the letters 
    // shift down by two multiplied to two places.
    // For example:
    // encrypt('hi') returns 'lm'
    // encrypt('asdfghjkl') returns 'ewhjklnop'
    // encrypt('gf') returns 'kj'
    // encrypt('et') returns 'ix'
    def encrypt(s : String) : String = {
        // Your code here
        var alphabet = "abcdefghijklmnopqrstuvwxyz"
        var alphabet2 = "cdefghijklmnopqrstuvwxyzab"
        var result = ""
        for (i <- 0 until s.length()) {
            var index = alphabet.indexOf(s(i))
            result += alphabet2(index)
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(encrypt(("hi")).equals(("lm")));
    assert(encrypt(("asdfghjkl")).equals(("ewhjklnop")));
    assert(encrypt(("gf")).equals(("kj")));
    assert(encrypt(("et")).equals(("ix")));
    assert(encrypt(("faewfawefaewg")).equals(("jeiajeaijeiak")));
    assert(encrypt(("hellomyfriend")).equals(("lippsqcjvmirh")));
    assert(encrypt(("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh")).equals(("hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl")));
    assert(encrypt(("a")).equals(("e")));
    }

}

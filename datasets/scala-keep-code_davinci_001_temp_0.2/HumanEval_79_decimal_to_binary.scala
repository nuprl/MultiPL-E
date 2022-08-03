import scala.math._
import scala.collection.mutable._
object Problem {
    // You will be given a number in decimal form and your task is to convert it to
    // binary format. The function should return a string, with each character representing a binary
    // number. Each character in the string will be '0' or '1'.
    // There will be an extra couple of characters 'db' at the beginning and at the end of the string.
    // The extra characters are there to help with the format.
    // Examples:
    // decimal_to_binary(15)   # returns "db1111db"
    // decimal_to_binary(32)   # returns "db100000db"
    def decimalToBinary(decimal : Long) : String = {
        var result = ""
        var decimalNumber = decimal
        while(decimalNumber > 0) {
            result = (decimalNumber % 2).toString + result
            decimalNumber = decimalNumber / 2
        }
        "db" + result + "db"

    }
    def main(args: Array[String]) = {
    assert(decimalToBinary((0l)).equals(("db0db")));
    assert(decimalToBinary((32l)).equals(("db100000db")));
    assert(decimalToBinary((103l)).equals(("db1100111db")));
    assert(decimalToBinary((15l)).equals(("db1111db")));
    }

}

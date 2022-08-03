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
    def decimalToBinary(decimal : Int) : String = {
        var binary = ""
        var decimal_copy = decimal
        while (decimal_copy > 0) {
            binary = (decimal_copy % 2).toString + binary
            decimal_copy = decimal_copy / 2
        }
        "db" + binary + "db"

    }
    def main(args: Array[String]) = {
    assert(decimalToBinary((0)).equals(("db0db")));
    assert(decimalToBinary((32)).equals(("db100000db")));
    assert(decimalToBinary((103)).equals(("db1100111db")));
    assert(decimalToBinary((15)).equals(("db1111db")));
    }

}

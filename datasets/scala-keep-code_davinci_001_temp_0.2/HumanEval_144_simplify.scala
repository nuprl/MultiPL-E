import scala.math._
import scala.collection.mutable._
object Problem {
    // Your task is to implement a function that will simplify the expression
    // x * n. The function returns True if x * n evaluates to a whole number and False
    // otherwise. Both x and n, are string representation of a fraction, and have the following format,
    // <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
    // You can assume that x, and n are valid fractions, and do not have zero as denominator.
    // simplify("1/5", "5/1") = True
    // simplify("1/6", "2/1") = False
    // simplify("7/10", "10/2") = False
    def simplify(x : String, n : String) : Boolean = {
        val x_ = x.split("/")
        val n_ = n.split("/")
        val x_num = x_(0).toInt
        val x_den = x_(1).toInt
        val n_num = n_(0).toInt
        val n_den = n_(1).toInt
        val x_gcd = gcd(x_num, x_den)
        val n_gcd = gcd(n_num, n_den)
        val x_num_ = x_num / x_gcd
        val x_den_ = x_den / x_gcd
        val n_num_ = n_num / n_gcd
        val n_den_ = n_den / n_gcd
        val x_num_n_num = x_num_ * n_num_
        val x_den_n_den = x_den_ * n_den_
        val x_num_n_den = x_num_ * n_den_
        val x_den_n_num = x_den_ * n_num_
        if (x_num_n_num == x_den_n_den) true
        else if (x_num_n_den == x_den_n_num) true
        else false

    }
    def main(args: Array[String]) = {
    assert(simplify(("1/5"), ("5/1")) == (true));
    assert(simplify(("1/6"), ("2/1")) == (false));
    assert(simplify(("5/1"), ("3/1")) == (true));
    assert(simplify(("7/10"), ("10/2")) == (false));
    assert(simplify(("2/10"), ("50/10")) == (true));
    assert(simplify(("7/2"), ("4/2")) == (true));
    assert(simplify(("11/6"), ("6/1")) == (true));
    assert(simplify(("2/3"), ("5/2")) == (false));
    assert(simplify(("5/2"), ("3/5")) == (false));
    assert(simplify(("2/4"), ("8/4")) == (true));
    assert(simplify(("2/4"), ("4/2")) == (true));
    assert(simplify(("1/5"), ("5/1")) == (true));
    assert(simplify(("1/5"), ("1/5")) == (false));
    }

}

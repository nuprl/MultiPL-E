# Implement the function f that takes n as a parameter,
# and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
# or the sum of numbers from 1 to i otherwise.
# i starts from 1.
# the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
# Example:
# f(5) == [1, 2, 6, 24, 15]
sub f {
    my($n) = @_;
    my @res;
    for my $i (1..$n) {
        if ($i % 2 == 0) {
            $res[$i-1] = $i * ($i-1);
        } else {
            $res[$i-1] = 1 + $i;
        }
    }
    return @res;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&f;
        if(eq_deeply($candidate->(5),[1, 2, 6, 24, 15])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7),[1, 2, 6, 24, 15, 720, 28])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1),[1])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(3),[1, 2, 6])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
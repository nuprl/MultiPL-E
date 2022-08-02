# The Brazilian factorial is defined as:
# brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
# where n > 0
# For example:
# >>> special_factorial(4)
# 288
# The function will receive an integer as input and should return the special
# factorial of this integer.
sub special_factorial {
    my($n) = @_;
    my $factorial = 1;
    my $i = 1;
    while ($i <= $n) {
        $factorial *= $i;
        $i++;
    }
    return $factorial;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&special_factorial;
        if(eq_deeply($candidate->(4),288)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5),34560)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7),125411328000)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Given a positive floating point number, it can be decomposed into
# and integer part (largest integer smaller than given number) and decimals
# (leftover part always smaller than 1).
# Return the decimal part of the number.
# >>> truncate_number(3.5)
# 0.5
sub truncate_number {
    my($number) = @_;
    my $int = int($number);
    return $number - $int;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&truncate_number;
        if(eq_deeply($candidate->(3.5),0.5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1.25),0.25)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(123.0),0.0)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
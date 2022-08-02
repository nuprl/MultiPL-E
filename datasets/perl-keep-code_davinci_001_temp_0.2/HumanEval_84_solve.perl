# Given a positive integer N, return the total sum of its digits in binary.
# Example
# For N = 1000, the sum of digits will be 1 the output should be "1".
# For N = 150, the sum of digits will be 6 the output should be "110".
# For N = 147, the sum of digits will be 12 the output should be "1100".
# Variables:
# @N integer
# Constraints: 0 ≤ N ≤ 10000.
# Output:
# a string of binary number
sub solve {
    my($N) = @_;
    my $sum = 0;
    while($N > 0) {
        $sum += $N % 2;
        $N /= 2;
    }
    return $sum;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&solve;
        if(Compare($candidate->(1000),"1")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(150),"110")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(147),"1100")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(333),"1001")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(963),"10010")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Given a positive integer n, return the product of the odd digits.
# Return 0 if all digits are even.
# For example:
# digits(1)  == 1
# digits(4)  == 0
# digits(235) == 15
sub digits {
    my($n) = @_;
    my $product = 1;
    while ($n) {
        my $digit = $n % 10;
        $product *= $digit if $digit % 2 != 0;
        $n = int($n / 10);
    }
    return $product;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&digits;
        if(eq_deeply($candidate->(5),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(54),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(120),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5014),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(98765),315)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5576543),2625)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(2468),0)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
# Example
# is_equal_to_sum_even(4) == False
# is_equal_to_sum_even(6) == False
# is_equal_to_sum_even(8) == True
sub is_equal_to_sum_even {
    my($n) = @_;
    my $sum = 0;
    for my $i (2..$n) {
        if ($n % $i == 0) {
            $sum += $i;
        }
    }
    return $sum == $n;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&is_equal_to_sum_even;
        if(eq_deeply($candidate->(4),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(6),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(8),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(11),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(12),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(13),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(16),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# For a given number n, find the largest number that divides n evenly, smaller than n
# >>> largest_divisor(15)
# 5
sub largest_divisor {
    my($n) = @_;
    my $i = 2;
    while ($i < $n) {
        if ($n % $i == 0) {
            $n = $n / $i;
        }
        else {
            $i++;
        }
    }
    return $n;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&largest_divisor;
        if(eq_deeply($candidate->(3),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(100),50)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(49),7)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
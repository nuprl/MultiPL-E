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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&largest_divisor;
        if(Compare($candidate->(3),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(7),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(10),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(100),50)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(49),7)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
# >>> fizz_buzz(50)
# 0
# >>> fizz_buzz(78)
# 2
# >>> fizz_buzz(79)
# 3
sub fizz_buzz {
    my($n) = @_;
    my $count = 0;
    for my $i (1..$n-1) {
        if ($i % 11 == 0 || $i % 13 == 0) {
            $count += ($i =~ /7/);
        }
    }
    return $count;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&fizz_buzz;
        if(Compare($candidate->(50),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(78),2)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(79),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(100),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(200),6)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(4000),192)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(10000),639)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(100000),8026)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
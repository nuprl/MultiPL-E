# Given an integer. return a tuple that has the number of even and odd digits respectively.
# Example:
# even_odd_count(-12) ==> (1, 1)
# even_odd_count(123) ==> (1, 2)
sub even_odd_count {
    my($num) = @_;
    my $even = 0;
    my $odd = 0;
    my $len = length($num);
    for (my $i = 0; $i < $len; $i++) {
        my $digit = substr($num, $i, 1);
        if ($digit % 2 == 0) {
            $even++;
        } else {
            $odd++;
        }
    }
    return ($even, $odd);
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&even_odd_count;
        if(Compare($candidate->(7),(0, 1))) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(-78),(1, 1))) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(3452),(2, 2))) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(346211),(3, 3))) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(-345821),(3, 3))) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(-2),(1, 0))) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(-45347),(2, 3))) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(0),(1, 0))) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
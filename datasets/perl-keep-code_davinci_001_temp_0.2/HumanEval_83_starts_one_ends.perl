# Given a positive integer n, return the count of the numbers of n-digit
# positive integers that start or end with 1.
sub starts_one_ends {
    my($n) = @_;
    return 0 if $n < 1;
    return 1 if $n == 1;
    return 1 if $n == 2;
    return 2 if $n == 3;
    return 4 if $n == 4;
    return 7 if $n == 5;
    return 13 if $n == 6;
    return 24 if $n == 7;
    return 44 if $n == 8;
    return 81 if $n == 9;
    my $count = 0;
    for my $start (1 .. 9) {
        $count += starts_one_ends($n - 1);
    }
    return $count;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&starts_one_ends;
        if(Compare($candidate->(1),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(2),18)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(3),180)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(4),1800)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(5),18000)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
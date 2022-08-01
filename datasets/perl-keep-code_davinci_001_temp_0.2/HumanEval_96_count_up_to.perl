# Implement a function that takes an non-negative integer and returns an array of the first n
# integers that are prime numbers and less than n.
# for example:
# count_up_to(5) => [2,3]
# count_up_to(11) => [2,3,5,7]
# count_up_to(0) => []
# count_up_to(20) => [2,3,5,7,11,13,17,19]
# count_up_to(1) => []
# count_up_to(18) => [2,3,5,7,11,13,17]
sub count_up_to {
    my($n) = @_;
    my @primes = (2);
    my $i = 3;
    while (scalar @primes < $n) {
        my $is_prime = 1;
        for my $p (@primes) {
            if ($i % $p == 0) {
                $is_prime = 0;
                last;
            }
        }
        if ($is_prime) {
            push @primes, $i;
        }
        $i += 2;
    }
    return @primes;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&count_up_to;
    my @arg0 = (2, 3);
    if(Compare($candidate->(5),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3);
    my @arg1 = (2, 3, 5);
    if(Compare($candidate->(6),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3);
    my @arg1 = (2, 3, 5);
    my @arg2 = (2, 3, 5);
    if(Compare($candidate->(7),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3);
    my @arg1 = (2, 3, 5);
    my @arg2 = (2, 3, 5);
    my @arg3 = (2, 3, 5, 7);
    if(Compare($candidate->(10),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3);
    my @arg1 = (2, 3, 5);
    my @arg2 = (2, 3, 5);
    my @arg3 = (2, 3, 5, 7);
    my @arg4 = ();
    if(Compare($candidate->(0),\@arg4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3);
    my @arg1 = (2, 3, 5);
    my @arg2 = (2, 3, 5);
    my @arg3 = (2, 3, 5, 7);
    my @arg4 = ();
    my @arg5 = (2, 3, 5, 7, 11, 13, 17, 19);
    if(Compare($candidate->(22),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3);
    my @arg1 = (2, 3, 5);
    my @arg2 = (2, 3, 5);
    my @arg3 = (2, 3, 5, 7);
    my @arg4 = ();
    my @arg5 = (2, 3, 5, 7, 11, 13, 17, 19);
    my @arg6 = ();
    if(Compare($candidate->(1),\@arg6)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3);
    my @arg1 = (2, 3, 5);
    my @arg2 = (2, 3, 5);
    my @arg3 = (2, 3, 5, 7);
    my @arg4 = ();
    my @arg5 = (2, 3, 5, 7, 11, 13, 17, 19);
    my @arg6 = ();
    my @arg7 = (2, 3, 5, 7, 11, 13, 17);
    if(Compare($candidate->(18),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3);
    my @arg1 = (2, 3, 5);
    my @arg2 = (2, 3, 5);
    my @arg3 = (2, 3, 5, 7);
    my @arg4 = ();
    my @arg5 = (2, 3, 5, 7, 11, 13, 17, 19);
    my @arg6 = ();
    my @arg7 = (2, 3, 5, 7, 11, 13, 17);
    my @arg8 = (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43);
    if(Compare($candidate->(47),\@arg8)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3);
    my @arg1 = (2, 3, 5);
    my @arg2 = (2, 3, 5);
    my @arg3 = (2, 3, 5, 7);
    my @arg4 = ();
    my @arg5 = (2, 3, 5, 7, 11, 13, 17, 19);
    my @arg6 = ();
    my @arg7 = (2, 3, 5, 7, 11, 13, 17);
    my @arg8 = (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43);
    my @arg9 = (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97);
    if(Compare($candidate->(101),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
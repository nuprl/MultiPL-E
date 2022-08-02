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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&count_up_to;
        if(eq_deeply($candidate->(5),[2, 3])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(6),[2, 3, 5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7),[2, 3, 5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10),[2, 3, 5, 7])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(0),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(22),[2, 3, 5, 7, 11, 13, 17, 19])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(18),[2, 3, 5, 7, 11, 13, 17])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(47),[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(101),[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
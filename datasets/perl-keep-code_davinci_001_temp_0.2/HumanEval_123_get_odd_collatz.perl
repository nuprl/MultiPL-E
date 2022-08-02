# Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
# The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
# as follows: start with any positive integer n. Then each term is obtained from the 
# previous term as follows: if the previous term is even, the next term is one half of 
# the previous term. If the previous term is odd, the next term is 3 times the previous
# term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
# Note: 
# 1. Collatz(1) is [1].
# 2. returned list sorted in increasing order.
# For example:
# get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
sub get_odd_collatz {
    my($n) = @_;
    my @odd_collatz = ();
    my @collatz = ();
    my $i = 0;
    while($n != 1) {
        push @collatz, $n;
        if($n % 2 == 0) {
            $n = $n / 2;
        } else {
            $n = 3 * $n + 1;
        }
    }
    push @collatz, $n;
    for($i = 0; $i < @collatz; $i++) {
        if($collatz[$i] % 2 != 0) {
            push @odd_collatz, $collatz[$i];
        }
    }
    return @odd_collatz;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&get_odd_collatz;
    my @arg0 = (1, 5, 7, 11, 13, 17);
    if(Compare($candidate->(14),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 5, 7, 11, 13, 17);
    my @arg1 = (1, 5);
    if(Compare($candidate->(5),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 5, 7, 11, 13, 17);
    my @arg1 = (1, 5);
    my @arg2 = (1, 3, 5);
    if(Compare($candidate->(12),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 5, 7, 11, 13, 17);
    my @arg1 = (1, 5);
    my @arg2 = (1, 3, 5);
    my @arg3 = (1);
    if(Compare($candidate->(1),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
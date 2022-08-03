# Given a positive integer n, you have to make a pile of n levels of stones.
# The first level has n stones.
# The number of stones in the next level is:
# - the next odd number if n is odd.
# - the next even number if n is even.
# Return the number of stones in each level in a list, where element at index
# i represents the number of stones in the level (i+1).
# Examples:
# >>> make_a_pile(3)
# [3, 5, 7]
sub make_a_pile {
    my($n) = @_;
    my @pile = ($n);
    while ($n > 1) {
        $n = $n % 2 == 0 ? $n / 2 : $n * 3 + 1;
        push @pile, $n;
    }
    return @pile;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&make_a_pile;
        if(eq_deeply($candidate->(3),[3, 5, 7])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(4),[4, 6, 8, 10])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5),[5, 7, 9, 11, 13])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(6),[6, 8, 10, 12, 14, 16])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(8),[8, 10, 12, 14, 16, 18, 20, 22])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
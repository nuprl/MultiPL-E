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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&make_a_pile;
    my @arg0 = (3, 5, 7);
    if(Compare($candidate->(3),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 5, 7);
    my @arg1 = (4, 6, 8, 10);
    if(Compare($candidate->(4),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 5, 7);
    my @arg1 = (4, 6, 8, 10);
    my @arg2 = (5, 7, 9, 11, 13);
    if(Compare($candidate->(5),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 5, 7);
    my @arg1 = (4, 6, 8, 10);
    my @arg2 = (5, 7, 9, 11, 13);
    my @arg3 = (6, 8, 10, 12, 14, 16);
    if(Compare($candidate->(6),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 5, 7);
    my @arg1 = (4, 6, 8, 10);
    my @arg2 = (5, 7, 9, 11, 13);
    my @arg3 = (6, 8, 10, 12, 14, 16);
    my @arg4 = (8, 10, 12, 14, 16, 18, 20, 22);
    if(Compare($candidate->(8),\@arg4)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
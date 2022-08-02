# This function takes a list l and returns a list l' such that
# l' is identical to l in the odd indicies, while its values at the even indicies are equal
# to the values of the even indicies of l, but sorted.
# >>> sort_even([1, 2, 3])
# [1, 2, 3]
# >>> sort_even([5, 6, 3, 4])
# [3, 6, 5, 4]
sub sort_even {
    my($l) = @_;
    my @l = @$l;
    my @l_prime = ();
    for(my $i = 0; $i < scalar(@l); $i += 2) {
        push(@l_prime, $l[$i]);
    }
    @l_prime = sort {$a <=> $b} @l_prime;
    for(my $i = 1; $i < scalar(@l); $i += 2) {
        push(@l_prime, $l[$i]);
    }
    return @l_prime;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&sort_even;
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 2, 3);
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 2, 3);
    my @arg2 = (5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10);
    my @arg3 = (-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 2, 3);
    my @arg2 = (5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10);
    my @arg3 = (-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123);
    my @arg4 = (5, 8, -12, 4, 23, 2, 3, 11, 12, -10);
    my @arg5 = (-12, 8, 3, 4, 5, 2, 12, 11, 23, -10);
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
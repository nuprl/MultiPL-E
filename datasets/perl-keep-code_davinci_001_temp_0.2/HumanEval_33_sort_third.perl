# This function takes a list l and returns a list l' such that
# l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
# to the values of the corresponding indicies of l, but sorted.
# >>> sort_third([1, 2, 3])
# [1, 2, 3]
# >>> sort_third([5, 6, 3, 4, 8, 9, 2])
# [2, 6, 3, 4, 8, 9, 5]
sub sort_third {
    my($l) = @_;
    my @l = @$l;
    my @l_prime;
    for (my $i = 0; $i < @l; $i++) {
        if ($i % 3 == 0) {
            push @l_prime, $l[$i];
        } else {
            push @l_prime, $l[$i];
        }
    }
    return @l_prime;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&sort_third;
    my @arg0 = (5, 6, 3, 4, 8, 9, 2);
    my @arg1 = (2, 6, 3, 4, 8, 9, 5);
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, 6, 3, 4, 8, 9, 2);
    my @arg1 = (2, 6, 3, 4, 8, 9, 5);
    my @arg2 = (5, 8, 3, 4, 6, 9, 2);
    my @arg3 = (2, 8, 3, 4, 6, 9, 5);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, 6, 3, 4, 8, 9, 2);
    my @arg1 = (2, 6, 3, 4, 8, 9, 5);
    my @arg2 = (5, 8, 3, 4, 6, 9, 2);
    my @arg3 = (2, 8, 3, 4, 6, 9, 5);
    my @arg4 = (5, 6, 9, 4, 8, 3, 2);
    my @arg5 = (2, 6, 9, 4, 8, 3, 5);
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, 6, 3, 4, 8, 9, 2);
    my @arg1 = (2, 6, 3, 4, 8, 9, 5);
    my @arg2 = (5, 8, 3, 4, 6, 9, 2);
    my @arg3 = (2, 8, 3, 4, 6, 9, 5);
    my @arg4 = (5, 6, 9, 4, 8, 3, 2);
    my @arg5 = (2, 6, 9, 4, 8, 3, 5);
    my @arg6 = (5, 6, 3, 4, 8, 9, 2, 1);
    my @arg7 = (2, 6, 3, 4, 8, 9, 5, 1);
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
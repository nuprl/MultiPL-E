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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&sort_third;
        if(eq_deeply($candidate->([5, 6, 3, 4, 8, 9, 2]),[2, 6, 3, 4, 8, 9, 5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 8, 3, 4, 6, 9, 2]),[2, 8, 3, 4, 6, 9, 5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 6, 9, 4, 8, 3, 2]),[2, 6, 9, 4, 8, 3, 5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 6, 3, 4, 8, 9, 2, 1]),[2, 6, 3, 4, 8, 9, 5, 1])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
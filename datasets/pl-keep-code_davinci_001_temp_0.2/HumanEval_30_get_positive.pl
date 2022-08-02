# Return only positive numbers in the list.
# >>> get_positive([-1, 2, -4, 5, 6])
# [2, 5, 6]
# >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
# [5, 3, 2, 3, 9, 123, 1]
sub get_positive {
    my($l) = @_;
    my @r;
    for my $e (@$l) {
        if($e > 0) {
            push @r, $e;
        }
    }
    return \@r;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&get_positive;
        if(eq_deeply($candidate->([-1, -2, 4, 5, 6]),[4, 5, 6])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10]),[5, 3, 2, 3, 3, 9, 123, 1])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-1, -2]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([]),[])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
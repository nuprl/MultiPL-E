# You are given a list of integers.
# Write a function next_smallest() that returns the 2nd smallest element of the list.
# Return None if there is no such element.
# next_smallest([1, 2, 3, 4, 5]) == 2
# next_smallest([5, 1, 4, 3, 2]) == 2
# next_smallest([]) == None
# next_smallest([1, 1]) == None
sub next_smallest {
    my($lst) = @_;
    my $min = $lst->[0];
    my $min_idx = 0;
    for my $i (1..$#$lst) {
        if ($lst->[$i] < $min) {
            $min = $lst->[$i];
            $min_idx = $i;
        }
    }
    if ($min_idx == 0) {
        return;
    }
    for my $i (0..$#$lst) {
        if ($i != $min_idx && $lst->[$i] > $min) {
            return $lst->[$i];
        }
    }
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&next_smallest;
        if(eq_deeply($candidate->([1, 2, 3, 4, 5]),2)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 1, 4, 3, 2]),2)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([]),undef)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 1]),undef)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 1, 1, 1, 0]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 1]),undef)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-35, 34, 12, -45]),-35)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
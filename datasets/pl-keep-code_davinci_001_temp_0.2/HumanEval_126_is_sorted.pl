# Given a list of numbers, return whether or not they are sorted
# in ascending order. If list has more than 1 duplicate of the same
# number, return False. Assume no negative numbers and only integers.
# Examples
# is_sorted([5]) ➞ True
# is_sorted([1, 2, 3, 4, 5]) ➞ True
# is_sorted([1, 3, 2, 4, 5]) ➞ False
# is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
# is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
# is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
# is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
# is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
sub is_sorted {
    my($lst) = @_;
    my $prev = -1;
    for my $i (@$lst) {
        if ($i < $prev) {
            return 0;
        }
        $prev = $i;
    }
    return 1;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&is_sorted;
        if(eq_deeply($candidate->([5]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4, 5]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 3, 2, 4, 5]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4, 5, 6]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4, 5, 6, 7]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 3, 2, 4, 5, 6, 7]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 2, 1]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 2, 2, 3, 4]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 3, 3, 4]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 2, 3, 3, 4]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4]),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
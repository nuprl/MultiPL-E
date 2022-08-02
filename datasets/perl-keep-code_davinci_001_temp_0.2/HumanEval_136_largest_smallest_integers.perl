# Create a function that returns a tuple (a, b), where 'a' is
# the largest of negative integers, and 'b' is the smallest
# of positive integers in a list.
# If there is no negative or positive integers, return them as None.
# Examples:
# largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
# largest_smallest_integers([]) == (None, None)
# largest_smallest_integers([0]) == (None, None)
sub largest_smallest_integers {
    my($lst) = @_;
    my($max, $min);
    for my $i (@$lst) {
        if ($i < 0) {
            if (!defined($max) || $i > $max) {
                $max = $i;
            }
        } elsif ($i > 0) {
            if (!defined($min) || $i < $min) {
                $min = $i;
            }
        }
    }
    return ($max, $min);
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&largest_smallest_integers;
        if(eq_deeply($candidate->([2, 4, 1, 3, 5, 7]),[undef, 1])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 4, 1, 3, 5, 7, 0]),[undef, 1])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 3, 2, 4, 5, 6, -2]),[-2, 1])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([4, 5, 3, 6, 2, 7, -7]),[-7, 2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([7, 3, 8, 4, 9, 2, 5, -9]),[-9, 2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([]),[undef, undef])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([0]),[undef, undef])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-1, -3, -5, -6]),[-1, undef])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-1, -3, -5, -6, 0]),[-1, undef])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-6, -4, -4, -3, 1]),[-3, 1])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-6, -4, -4, -3, -100, 1]),[-3, 1])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&largest_smallest_integers;
    my @arg0 = (2, 4, 1, 3, 5, 7);
    if(Compare($candidate->(\@arg0),(#f, 1))) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 1, 3, 5, 7);
    my @arg1 = (2, 4, 1, 3, 5, 7, 0);
    if(Compare($candidate->(\@arg1),(#f, 1))) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 1, 3, 5, 7);
    my @arg1 = (2, 4, 1, 3, 5, 7, 0);
    my @arg2 = (1, 3, 2, 4, 5, 6, -2);
    if(Compare($candidate->(\@arg2),(-2, 1))) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 1, 3, 5, 7);
    my @arg1 = (2, 4, 1, 3, 5, 7, 0);
    my @arg2 = (1, 3, 2, 4, 5, 6, -2);
    my @arg3 = (4, 5, 3, 6, 2, 7, -7);
    if(Compare($candidate->(\@arg3),(-7, 2))) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 1, 3, 5, 7);
    my @arg1 = (2, 4, 1, 3, 5, 7, 0);
    my @arg2 = (1, 3, 2, 4, 5, 6, -2);
    my @arg3 = (4, 5, 3, 6, 2, 7, -7);
    my @arg4 = (7, 3, 8, 4, 9, 2, 5, -9);
    if(Compare($candidate->(\@arg4),(-9, 2))) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 1, 3, 5, 7);
    my @arg1 = (2, 4, 1, 3, 5, 7, 0);
    my @arg2 = (1, 3, 2, 4, 5, 6, -2);
    my @arg3 = (4, 5, 3, 6, 2, 7, -7);
    my @arg4 = (7, 3, 8, 4, 9, 2, 5, -9);
    my @arg5 = ();
    if(Compare($candidate->(\@arg5),(#f, #f))) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 1, 3, 5, 7);
    my @arg1 = (2, 4, 1, 3, 5, 7, 0);
    my @arg2 = (1, 3, 2, 4, 5, 6, -2);
    my @arg3 = (4, 5, 3, 6, 2, 7, -7);
    my @arg4 = (7, 3, 8, 4, 9, 2, 5, -9);
    my @arg5 = ();
    my @arg6 = (0);
    if(Compare($candidate->(\@arg6),(#f, #f))) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 1, 3, 5, 7);
    my @arg1 = (2, 4, 1, 3, 5, 7, 0);
    my @arg2 = (1, 3, 2, 4, 5, 6, -2);
    my @arg3 = (4, 5, 3, 6, 2, 7, -7);
    my @arg4 = (7, 3, 8, 4, 9, 2, 5, -9);
    my @arg5 = ();
    my @arg6 = (0);
    my @arg7 = (-1, -3, -5, -6);
    if(Compare($candidate->(\@arg7),(-1, #f))) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 1, 3, 5, 7);
    my @arg1 = (2, 4, 1, 3, 5, 7, 0);
    my @arg2 = (1, 3, 2, 4, 5, 6, -2);
    my @arg3 = (4, 5, 3, 6, 2, 7, -7);
    my @arg4 = (7, 3, 8, 4, 9, 2, 5, -9);
    my @arg5 = ();
    my @arg6 = (0);
    my @arg7 = (-1, -3, -5, -6);
    my @arg8 = (-1, -3, -5, -6, 0);
    if(Compare($candidate->(\@arg8),(-1, #f))) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 1, 3, 5, 7);
    my @arg1 = (2, 4, 1, 3, 5, 7, 0);
    my @arg2 = (1, 3, 2, 4, 5, 6, -2);
    my @arg3 = (4, 5, 3, 6, 2, 7, -7);
    my @arg4 = (7, 3, 8, 4, 9, 2, 5, -9);
    my @arg5 = ();
    my @arg6 = (0);
    my @arg7 = (-1, -3, -5, -6);
    my @arg8 = (-1, -3, -5, -6, 0);
    my @arg9 = (-6, -4, -4, -3, 1);
    if(Compare($candidate->(\@arg9),(-3, 1))) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 1, 3, 5, 7);
    my @arg1 = (2, 4, 1, 3, 5, 7, 0);
    my @arg2 = (1, 3, 2, 4, 5, 6, -2);
    my @arg3 = (4, 5, 3, 6, 2, 7, -7);
    my @arg4 = (7, 3, 8, 4, 9, 2, 5, -9);
    my @arg5 = ();
    my @arg6 = (0);
    my @arg7 = (-1, -3, -5, -6);
    my @arg8 = (-1, -3, -5, -6, 0);
    my @arg9 = (-6, -4, -4, -3, 1);
    my @arg10 = (-6, -4, -4, -3, -100, 1);
    if(Compare($candidate->(\@arg10),(-3, 1))) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
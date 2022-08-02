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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&get_positive;
    my @arg0 = (-1, -2, 4, 5, 6);
    my @arg1 = (4, 5, 6);
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-1, -2, 4, 5, 6);
    my @arg1 = (4, 5, 6);
    my @arg2 = (5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10);
    my @arg3 = (5, 3, 2, 3, 3, 9, 123, 1);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-1, -2, 4, 5, 6);
    my @arg1 = (4, 5, 6);
    my @arg2 = (5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10);
    my @arg3 = (5, 3, 2, 3, 3, 9, 123, 1);
    my @arg4 = (-1, -2);
    my @arg5 = ();
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-1, -2, 4, 5, 6);
    my @arg1 = (4, 5, 6);
    my @arg2 = (5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10);
    my @arg3 = (5, 3, 2, 3, 3, 9, 123, 1);
    my @arg4 = (-1, -2);
    my @arg5 = ();
    my @arg6 = ();
    my @arg7 = ();
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
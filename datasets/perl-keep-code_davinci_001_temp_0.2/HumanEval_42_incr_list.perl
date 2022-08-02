# Return list with elements incremented by 1.
# >>> incr_list([1, 2, 3])
# [2, 3, 4]
# >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [6, 4, 6, 3, 4, 4, 10, 1, 124]
sub incr_list {
    my($l) = @_;
    my @l = @$l;
    my @r;
    for my $e (@l) {
        push @r, $e + 1;
    }
    return \@r;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&incr_list;
    my @arg0 = ();
    my @arg1 = ();
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (3, 2, 1);
    my @arg3 = (4, 3, 2);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (3, 2, 1);
    my @arg3 = (4, 3, 2);
    my @arg4 = (5, 2, 5, 2, 3, 3, 9, 0, 123);
    my @arg5 = (6, 3, 6, 3, 4, 4, 10, 1, 124);
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
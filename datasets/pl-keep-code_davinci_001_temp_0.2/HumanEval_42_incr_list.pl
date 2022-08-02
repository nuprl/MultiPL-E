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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&incr_list;
        if(eq_deeply($candidate->([]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 2, 1]),[4, 3, 2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 2, 5, 2, 3, 3, 9, 0, 123]),[6, 3, 6, 3, 4, 4, 10, 1, 124])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
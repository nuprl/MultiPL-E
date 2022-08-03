# Given a list of positive integers x. return a sorted list of all 
# elements that hasn't any even digit.
# Note: Returned list should be sorted in increasing order.
# For example:
# >>> unique_digits([15, 33, 1422, 1])
# [1, 15, 33]
# >>> unique_digits([152, 323, 1422, 10])
# []
sub unique_digits {
    my($x) = @_;
    my @result;
    foreach my $i (@$x) {
        if ($i % 2 != 0) {
            push @result, $i;
        }
    }
    return @result;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&unique_digits;
        if(eq_deeply($candidate->([15, 33, 1422, 1]),[1, 15, 33])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([152, 323, 1422, 10]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([12345, 2033, 111, 151]),[111, 151])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([135, 103, 31]),[31, 135])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
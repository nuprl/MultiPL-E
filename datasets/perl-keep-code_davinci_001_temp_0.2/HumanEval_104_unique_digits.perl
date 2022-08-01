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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&unique_digits;
    my @arg0 = (15, 33, 1422, 1);
    my @arg1 = (1, 15, 33);
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (15, 33, 1422, 1);
    my @arg1 = (1, 15, 33);
    my @arg2 = (152, 323, 1422, 10);
    my @arg3 = ();
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (15, 33, 1422, 1);
    my @arg1 = (1, 15, 33);
    my @arg2 = (152, 323, 1422, 10);
    my @arg3 = ();
    my @arg4 = (12345, 2033, 111, 151);
    my @arg5 = (111, 151);
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (15, 33, 1422, 1);
    my @arg1 = (1, 15, 33);
    my @arg2 = (152, 323, 1422, 10);
    my @arg3 = ();
    my @arg4 = (12345, 2033, 111, 151);
    my @arg5 = (111, 151);
    my @arg6 = (135, 103, 31);
    my @arg7 = (31, 135);
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
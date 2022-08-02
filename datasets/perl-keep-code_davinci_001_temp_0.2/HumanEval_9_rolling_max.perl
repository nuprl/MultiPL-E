# From a given list of integers, generate a list of rolling maximum element found until given moment
# in the sequence.
# >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
# [1, 2, 3, 3, 3, 4, 4]
sub rolling_max {
    my($numbers) = @_;
    my $max = 0;
    my @result;
    foreach my $n (@$numbers) {
        if ($n > $max) {
            $max = $n;
        }
        push @result, $max;
    }
    return \@result;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&rolling_max;
    my @arg0 = ();
    my @arg1 = ();
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (1, 2, 3, 4);
    my @arg3 = (1, 2, 3, 4);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (1, 2, 3, 4);
    my @arg3 = (1, 2, 3, 4);
    my @arg4 = (4, 3, 2, 1);
    my @arg5 = (4, 4, 4, 4);
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (1, 2, 3, 4);
    my @arg3 = (1, 2, 3, 4);
    my @arg4 = (4, 3, 2, 1);
    my @arg5 = (4, 4, 4, 4);
    my @arg6 = (3, 2, 3, 100, 3);
    my @arg7 = (3, 3, 3, 100, 100);
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Given list of numbers (of at least two elements), apply a linear transform to that list,
# such that the smallest number will become 0 and the largest will become 1
# >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
# [0.0, 0.25, 0.5, 0.75, 1.0]
sub rescale_to_unit {
    my($numbers) = @_;
    my $min = min(@$numbers);
    my $max = max(@$numbers);
    my $range = $max - $min;
    my $result = [];
    for my $n (@$numbers) {
        push @$result, ($n - $min) / $range;
    }
    return $result;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&rescale_to_unit;
    my @arg0 = (2.0, 49.9);
    my @arg1 = (0.0, 1.0);
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2.0, 49.9);
    my @arg1 = (0.0, 1.0);
    my @arg2 = (100.0, 49.9);
    my @arg3 = (1.0, 0.0);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2.0, 49.9);
    my @arg1 = (0.0, 1.0);
    my @arg2 = (100.0, 49.9);
    my @arg3 = (1.0, 0.0);
    my @arg4 = (1.0, 2.0, 3.0, 4.0, 5.0);
    my @arg5 = (0.0, 0.25, 0.5, 0.75, 1.0);
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2.0, 49.9);
    my @arg1 = (0.0, 1.0);
    my @arg2 = (100.0, 49.9);
    my @arg3 = (1.0, 0.0);
    my @arg4 = (1.0, 2.0, 3.0, 4.0, 5.0);
    my @arg5 = (0.0, 0.25, 0.5, 0.75, 1.0);
    my @arg6 = (2.0, 1.0, 5.0, 3.0, 4.0);
    my @arg7 = (0.25, 0.0, 1.0, 0.5, 0.75);
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2.0, 49.9);
    my @arg1 = (0.0, 1.0);
    my @arg2 = (100.0, 49.9);
    my @arg3 = (1.0, 0.0);
    my @arg4 = (1.0, 2.0, 3.0, 4.0, 5.0);
    my @arg5 = (0.0, 0.25, 0.5, 0.75, 1.0);
    my @arg6 = (2.0, 1.0, 5.0, 3.0, 4.0);
    my @arg7 = (0.25, 0.0, 1.0, 0.5, 0.75);
    my @arg8 = (12.0, 11.0, 15.0, 13.0, 14.0);
    my @arg9 = (0.25, 0.0, 1.0, 0.5, 0.75);
    if(Compare($candidate->(\@arg8),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
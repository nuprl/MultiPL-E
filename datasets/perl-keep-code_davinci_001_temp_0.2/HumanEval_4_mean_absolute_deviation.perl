# For a given list of input numbers, calculate Mean Absolute Deviation
# around the mean of this dataset.
# Mean Absolute Deviation is the average absolute difference between each
# element and a centerpoint (mean in this case):
# MAD = average | x - x_mean |
# >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
# 1.0
sub mean_absolute_deviation {
    my($numbers) = @_;
    my $mean = mean($numbers);
    my $sum = 0;
    foreach my $number (@$numbers) {
        $sum += abs($number - $mean);
    }
    return $sum / @$numbers;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&mean_absolute_deviation;
    my @arg0 = (1.0, 2.0);
    if(Compare($candidate->(\@arg0),0.5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0);
    my @arg1 = (1.0, 2.0, 3.0, 4.0);
    if(Compare($candidate->(\@arg1),1.0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0);
    my @arg1 = (1.0, 2.0, 3.0, 4.0);
    my @arg2 = (1.0, 2.0, 3.0, 4.0, 5.0);
    if(Compare($candidate->(\@arg2),1.2)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
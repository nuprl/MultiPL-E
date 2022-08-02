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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&mean_absolute_deviation;
        if(eq_deeply($candidate->([1.0, 2.0]),0.5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.0, 2.0, 3.0, 4.0]),1.0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.0, 2.0, 3.0, 4.0, 5.0]),1.2)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
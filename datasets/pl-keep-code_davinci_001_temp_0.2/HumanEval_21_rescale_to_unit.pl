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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&rescale_to_unit;
        if(eq_deeply($candidate->([2.0, 49.9]),[0.0, 1.0])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([100.0, 49.9]),[1.0, 0.0])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.0, 2.0, 3.0, 4.0, 5.0]),[0.0, 0.25, 0.5, 0.75, 1.0])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2.0, 1.0, 5.0, 3.0, 4.0]),[0.25, 0.0, 1.0, 0.5, 0.75])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([12.0, 11.0, 15.0, 13.0, 14.0]),[0.25, 0.0, 1.0, 0.5, 0.75])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
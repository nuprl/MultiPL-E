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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&rolling_max;
        if(eq_deeply($candidate->([]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4]),[1, 2, 3, 4])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([4, 3, 2, 1]),[4, 4, 4, 4])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 2, 3, 100, 3]),[3, 3, 3, 100, 100])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
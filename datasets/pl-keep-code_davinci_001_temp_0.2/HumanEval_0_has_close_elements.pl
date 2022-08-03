# Check if in given list of numbers, are any two numbers closer to each other than
# given threshold.
# >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
# False
# >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
# True
sub has_close_elements {
    my($numbers, $threshold) = @_;
    my $min_distance = undef;
    for my $i (0 .. $#$numbers) {
        for my $j ($i+1 .. $#$numbers) {
            my $distance = abs($numbers->[$i] - $numbers->[$j]);
            if (!defined($min_distance) || $distance < $min_distance) {
                $min_distance = $distance;
            }
        }
    }
    return $min_distance <= $threshold;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&has_close_elements;
        if(eq_deeply($candidate->([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.3),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.05),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.0, 2.0, 5.9, 4.0, 5.0], 0.95),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.0, 2.0, 5.9, 4.0, 5.0], 0.8),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.0, 2.0, 3.0, 4.0, 5.0, 2.0], 0.1),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.1, 2.2, 3.1, 4.1, 5.1], 1.0),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.1, 2.2, 3.1, 4.1, 5.1], 0.5),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
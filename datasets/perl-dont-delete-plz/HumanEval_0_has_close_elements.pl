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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&has_close_elements;
    my @arg1 = (1.0, 2.0, 3.9, 4.0, 5.0, 2.2);
    if(Compare($candidate->(\@arg1, 0.3),1)) {
        print "ok 1" }else{
        print $candidate->(\@arg1, 0.3);
        }
    if(Compare($candidate->(\@arg1, 0.05),"")) {
        print "ok 2" }else{
        print $candidate->(\@arg1, 0.05);
        }
    my @arg2 = (1.0, 2.0, 5.9, 4.0, 5.0); 
    if(Compare($candidate->(\@arg2, 0.95),1)) {
        print "ok 3" }else{
        print $candidate->(\@arg2, 0.95);
        }
    if(Compare($candidate->(\@arg2, 0.8),"")) {
        print "ok 4" }else{
        print $candidate->(\@arg2, 0.8);
        }
    my @arg3 = (1.0, 2.0, 3.0, 4.0, 5.0, 2.0);
    if(Compare($candidate->(\@arg3, 0.1),1)) {
        print "ok 5" }else{
        print $candidate->(\@arg3, 0.1);
        }
    my @arg4 = (1.1, 2.2, 3.1, 4.1, 5.1);
    if(Compare($candidate->(\@arg4, 1.0),1)) {
        print "ok 6" }else{
        print $candidate->(\@arg4, 1.0);
        }
    if(Compare($candidate->(\@arg4, 0.5),"")) {
        print "ok 7" }else{
        print $candidate->(\@arg4, 0.5);
        }
}

testhumaneval();

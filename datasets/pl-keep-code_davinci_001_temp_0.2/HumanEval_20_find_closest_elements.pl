# From a supplied list of numbers (of length at least two) select and return two that are the closest to each
# other and return them in order (smaller number, larger number).
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
# (2.0, 2.2)
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
# (2.0, 2.0)
sub find_closest_elements {
    my($numbers) = @_;
    my($smallest_difference, $smallest_difference_index, $smallest_difference_index_1, $smallest_difference_index_2);
    for(my $i = 0; $i < @$numbers; $i++) {
        for(my $j = $i + 1; $j < @$numbers; $j++) {
            my $difference = abs($numbers->[$i] - $numbers->[$j]);
            if(!defined($smallest_difference) || $difference < $smallest_difference) {
                $smallest_difference = $difference;
                $smallest_difference_index_1 = $i;
                $smallest_difference_index_2 = $j;
            }
        }
    }
    return($numbers->[$smallest_difference_index_1], $numbers->[$smallest_difference_index_2]);
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&find_closest_elements;
        if(eq_deeply($candidate->([1.0, 2.0, 3.9, 4.0, 5.0, 2.2]),[3.9, 4.0])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.0, 2.0, 5.9, 4.0, 5.0]),[5.0, 5.9])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.0, 2.0, 3.0, 4.0, 5.0, 2.2]),[2.0, 2.2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.0, 2.0, 3.0, 4.0, 5.0, 2.0]),[2.0, 2.0])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1.1, 2.2, 3.1, 4.1, 5.1]),[2.2, 3.1])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
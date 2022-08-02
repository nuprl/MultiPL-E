# Given a list of numbers, return the sum of squares of the numbers
# in the list that are odd. Ignore numbers that are negative or not integers.
# double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
# double_the_difference([-1, -2, 0]) == 0
# double_the_difference([9, -2]) == 81
# double_the_difference([0]) == 0  
# If the input list is empty, return 0.
sub double_the_difference {
    my($lst) = @_;
    my $sum = 0;
    foreach my $i (@$lst) {
        if ($i % 2 != 0) {
            $sum += $i * $i;
        }
    }
    return $sum;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&double_the_difference;
        if(eq_deeply($candidate->([]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5.0, 4.0]),25)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([0.1, 0.2, 0.3]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-10.0, -20.0, -30.0]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-1.0, -2.0, 8.0]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([0.2, 3.0, 5.0]),34)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]),165)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
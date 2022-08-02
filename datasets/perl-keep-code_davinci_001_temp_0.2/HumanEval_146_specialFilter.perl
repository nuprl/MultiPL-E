# Write a function that takes an array of numbers as input and returns 
# the number of elements in the array that are greater than 10 and both 
# first and last digits of a number are odd (1, 3, 5, 7, 9).
# For example:
# specialFilter([15, -73, 14, -15]) => 1 
# specialFilter([33, -2, -3, 45, 21, 109]) => 2
sub specialFilter {
    my($nums) = @_;
    my $count = 0;
    for my $n (@$nums) {
        if ($n > 10 && $n % 10 % 2 == 1 && $n / 10 % 10 % 2 == 1) {
            $count++;
        }
    }
    return $count;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&specialFilter;
        if(eq_deeply($candidate->([5, -2, 1, -5]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([15, -73, 14, -15]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([33, -2, -3, 45, 21, 109]),2)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([43, -12, 93, 125, 121, 109]),4)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([71, -2, -33, 75, 21, 19]),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([]),0)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
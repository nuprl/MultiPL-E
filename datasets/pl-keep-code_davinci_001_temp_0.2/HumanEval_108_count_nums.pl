# Write a function count_nums which takes an array of integers and returns
# the number of elements which has a sum of digits > 0.
# If a number is negative, then its first signed digit will be negative:
# e.g. -123 has signed digits -1, 2, and 3.
# >>> count_nums([]) == 0
# >>> count_nums([-1, 11, -11]) == 1
# >>> count_nums([1, 1, 2]) == 3
sub count_nums {
    my($arr) = @_;
    my $count = 0;
    foreach my $num (@$arr) {
        if (sum_digits($num) > 0) {
            $count++;
        }
    }
    return $count;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&count_nums;
        if(eq_deeply($candidate->([]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-1, -2, 0]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 1, 2, -2, 3, 4, 5]),6)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 6, 9, -6, 0, 1, 5]),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 100, 98, -7, 1, -1]),4)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([12, 23, 34, -45, -56, 0]),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([0, 1]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1]),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
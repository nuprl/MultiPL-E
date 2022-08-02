# Write a function which sorts the given list of integers
# in ascending order according to the sum of their digits.
# Note: if there are several items with similar sum of their digits,
# order them based on their index in original list.
# For example:
# >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
# >>> order_by_points([]) == []
sub order_by_points {
    my($nums) = @_;
    my @sorted = sort {
        my $sum1 = sum_digits($a);
        my $sum2 = sum_digits($b);
        $sum1 <=> $sum2 || $a <=> $b
    } @$nums;
    return \@sorted;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&order_by_points;
        if(eq_deeply($candidate->([1, 11, -1, -11, -12]),[-1, -11, 1, -12, 11])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]),[0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, -11, -32, 43, 54, -98, 2, -3]),[-3, -32, -98, -11, 1, 2, 43, 54])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]),[1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([0, 6, 6, -76, -21, 23, 4]),[-76, -21, 0, 4, 23, 6, 6])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
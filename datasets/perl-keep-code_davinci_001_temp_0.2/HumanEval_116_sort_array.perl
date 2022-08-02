# In this Kata, you have to sort an array of non-negative integers according to
# number of ones in their binary representation in ascending order.
# For similar number of ones, sort based on decimal value.
# It must be implemented like this:
# >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
# >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
# >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
sub sort_array {
    my($arr) = @_;
    my @sorted = sort {
        my $a = unpack("B*", pack("N", $a));
        my $b = unpack("B*", pack("N", $b));
        my $a_ones = $a =~ tr/1//;
        my $b_ones = $b =~ tr/1//;
        if ($a_ones == $b_ones) {
            $a <=> $b;
        } else {
            $a_ones <=> $b_ones;
        }
    } @$arr;
    return \@sorted;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&sort_array;
        if(eq_deeply($candidate->([1, 5, 2, 3, 4]),[1, 2, 4, 3, 5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-2, -3, -4, -5, -6]),[-4, -2, -6, -5, -3])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 0, 2, 3, 4]),[0, 1, 2, 4, 3])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4]),[2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 6, 44, 12, 32, 5]),[32, 3, 5, 6, 12, 44])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 4, 8, 16, 32]),[2, 4, 8, 16, 32])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 4, 8, 16, 32]),[2, 4, 8, 16, 32])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
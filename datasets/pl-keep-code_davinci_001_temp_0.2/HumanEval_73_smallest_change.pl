# Given an array arr of integers, find the minimum number of elements that
# need to be changed to make the array palindromic. A palindromic array is an array that
# is read the same backwards and forwards. In one change, you can change one element to any other element.
# For example:
# smallest_change([1,2,3,5,4,7,9,6]) == 4
# smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
# smallest_change([1, 2, 3, 2, 1]) == 0
sub smallest_change {
    my($arr) = @_;
    my $len = scalar @$arr;
    my $min = $len;
    for(my $i = 0; $i < $len; $i++) {
        my $j = $len - $i - 1;
        my $count = 0;
        while($i < $j) {
            if($arr->[$i] != $arr->[$j]) {
                $count++;
            }
            $i++;
            $j--;
        }
        $min = $count if $count < $min;
    }
    return $min;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&smallest_change;
        if(eq_deeply($candidate->([1, 2, 3, 5, 4, 7, 9, 6]),4)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4, 3, 2, 2]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 4, 2]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 4, 4, 2]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 2, 1]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 1, 1, 3]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([0, 1]),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
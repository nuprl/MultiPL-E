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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&smallest_change;
    my @arg0 = (1, 2, 3, 5, 4, 7, 9, 6);
    if(Compare($candidate->(\@arg0),4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 5, 4, 7, 9, 6);
    my @arg1 = (1, 2, 3, 4, 3, 2, 2);
    if(Compare($candidate->(\@arg1),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 5, 4, 7, 9, 6);
    my @arg1 = (1, 2, 3, 4, 3, 2, 2);
    my @arg2 = (1, 4, 2);
    if(Compare($candidate->(\@arg2),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 5, 4, 7, 9, 6);
    my @arg1 = (1, 2, 3, 4, 3, 2, 2);
    my @arg2 = (1, 4, 2);
    my @arg3 = (1, 4, 4, 2);
    if(Compare($candidate->(\@arg3),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 5, 4, 7, 9, 6);
    my @arg1 = (1, 2, 3, 4, 3, 2, 2);
    my @arg2 = (1, 4, 2);
    my @arg3 = (1, 4, 4, 2);
    my @arg4 = (1, 2, 3, 2, 1);
    if(Compare($candidate->(\@arg4),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 5, 4, 7, 9, 6);
    my @arg1 = (1, 2, 3, 4, 3, 2, 2);
    my @arg2 = (1, 4, 2);
    my @arg3 = (1, 4, 4, 2);
    my @arg4 = (1, 2, 3, 2, 1);
    my @arg5 = (3, 1, 1, 3);
    if(Compare($candidate->(\@arg5),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 5, 4, 7, 9, 6);
    my @arg1 = (1, 2, 3, 4, 3, 2, 2);
    my @arg2 = (1, 4, 2);
    my @arg3 = (1, 4, 4, 2);
    my @arg4 = (1, 2, 3, 2, 1);
    my @arg5 = (3, 1, 1, 3);
    my @arg6 = (1);
    if(Compare($candidate->(\@arg6),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 5, 4, 7, 9, 6);
    my @arg1 = (1, 2, 3, 4, 3, 2, 2);
    my @arg2 = (1, 4, 2);
    my @arg3 = (1, 4, 4, 2);
    my @arg4 = (1, 2, 3, 2, 1);
    my @arg5 = (3, 1, 1, 3);
    my @arg6 = (1);
    my @arg7 = (0, 1);
    if(Compare($candidate->(\@arg7),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
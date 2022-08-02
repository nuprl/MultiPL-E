# We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
# numbers in the array will be randomly ordered. Your task is to determine if
# it is possible to get an array sorted in non-decreasing order by performing 
# the following operation on the given array:
# You are allowed to perform right shift operation any number of times.
# One right shift operation means shifting all elements of the array by one
# position in the right direction. The last element of the array will be moved to
# the starting position in the array i.e. 0th index. 
# If it is possible to obtain the sorted array by performing the above operation
# then return True else return False.
# If the given array is empty then return True.
# Note: The given list is guaranteed to have unique elements.
# For Example:
# move_one_ball([3, 4, 5, 1, 2])==>True
# Explanation: By performin 2 right shift operations, non-decreasing order can
# be achieved for the given array.
# move_one_ball([3, 5, 4, 1, 2])==>False
# Explanation:It is not possible to get non-decreasing order for the given
# array by performing any number of right shift operations.
sub move_one_ball {
    my($arr) = @_;
    my $len = scalar(@$arr);
    my $i = 0;
    my $j = $len - 1;
    while($i < $j) {
        if($arr->[$i] > $arr->[$i+1]) {
            my $temp = $arr->[$i];
            $arr->[$i] = $arr->[$i+1];
            $arr->[$i+1] = $temp;
            $i++;
        }
        else {
            $i++;
        }
    }
    return $arr;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&move_one_ball;
    my @arg0 = (3, 4, 5, 1, 2);
    if(Compare($candidate->(\@arg0),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 4, 5, 1, 2);
    my @arg1 = (3, 5, 10, 1, 2);
    if(Compare($candidate->(\@arg1),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 4, 5, 1, 2);
    my @arg1 = (3, 5, 10, 1, 2);
    my @arg2 = (4, 3, 1, 2);
    if(Compare($candidate->(\@arg2),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 4, 5, 1, 2);
    my @arg1 = (3, 5, 10, 1, 2);
    my @arg2 = (4, 3, 1, 2);
    my @arg3 = (3, 5, 4, 1, 2);
    if(Compare($candidate->(\@arg3),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 4, 5, 1, 2);
    my @arg1 = (3, 5, 10, 1, 2);
    my @arg2 = (4, 3, 1, 2);
    my @arg3 = (3, 5, 4, 1, 2);
    my @arg4 = ();
    if(Compare($candidate->(\@arg4),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Create a function which returns the largest index of an element which
# is not greater than or equal to the element immediately preceding it. If
# no such element exists then return -1. The given array will not contain
# duplicate values.
# Examples:
# can_arrange([1,2,4,3,5]) = 3
# can_arrange([1,2,3]) = -1
sub can_arrange {
    my($arr) = @_;
    my $n = @$arr;
    my $prev = -1;
    for my $i (0..$n-1) {
        if ($arr->[$i] <= $prev) {
            return $i-1;
        }
        $prev = $arr->[$i];
    }
    return -1;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&can_arrange;
    my @arg0 = (1, 2, 4, 3, 5);
    if(Compare($candidate->(\@arg0),3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 3, 5);
    my @arg1 = (1, 2, 4, 5);
    if(Compare($candidate->(\@arg1),-1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 3, 5);
    my @arg1 = (1, 2, 4, 5);
    my @arg2 = (1, 4, 2, 5, 6, 7, 8, 9, 10);
    if(Compare($candidate->(\@arg2),2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 3, 5);
    my @arg1 = (1, 2, 4, 5);
    my @arg2 = (1, 4, 2, 5, 6, 7, 8, 9, 10);
    my @arg3 = (4, 8, 5, 7, 3);
    if(Compare($candidate->(\@arg3),4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 3, 5);
    my @arg1 = (1, 2, 4, 5);
    my @arg2 = (1, 4, 2, 5, 6, 7, 8, 9, 10);
    my @arg3 = (4, 8, 5, 7, 3);
    my @arg4 = ();
    if(Compare($candidate->(\@arg4),-1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
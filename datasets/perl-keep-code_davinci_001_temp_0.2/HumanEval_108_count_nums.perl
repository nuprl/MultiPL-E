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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&count_nums;
    my @arg0 = ();
    if(Compare($candidate->(\@arg0),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (-1, -2, 0);
    if(Compare($candidate->(\@arg1),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (-1, -2, 0);
    my @arg2 = (1, 1, 2, -2, 3, 4, 5);
    if(Compare($candidate->(\@arg2),6)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (-1, -2, 0);
    my @arg2 = (1, 1, 2, -2, 3, 4, 5);
    my @arg3 = (1, 6, 9, -6, 0, 1, 5);
    if(Compare($candidate->(\@arg3),5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (-1, -2, 0);
    my @arg2 = (1, 1, 2, -2, 3, 4, 5);
    my @arg3 = (1, 6, 9, -6, 0, 1, 5);
    my @arg4 = (1, 100, 98, -7, 1, -1);
    if(Compare($candidate->(\@arg4),4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (-1, -2, 0);
    my @arg2 = (1, 1, 2, -2, 3, 4, 5);
    my @arg3 = (1, 6, 9, -6, 0, 1, 5);
    my @arg4 = (1, 100, 98, -7, 1, -1);
    my @arg5 = (12, 23, 34, -45, -56, 0);
    if(Compare($candidate->(\@arg5),5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (-1, -2, 0);
    my @arg2 = (1, 1, 2, -2, 3, 4, 5);
    my @arg3 = (1, 6, 9, -6, 0, 1, 5);
    my @arg4 = (1, 100, 98, -7, 1, -1);
    my @arg5 = (12, 23, 34, -45, -56, 0);
    my @arg6 = (0, 1);
    if(Compare($candidate->(\@arg6),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (-1, -2, 0);
    my @arg2 = (1, 1, 2, -2, 3, 4, 5);
    my @arg3 = (1, 6, 9, -6, 0, 1, 5);
    my @arg4 = (1, 100, 98, -7, 1, -1);
    my @arg5 = (12, 23, 34, -45, -56, 0);
    my @arg6 = (0, 1);
    my @arg7 = (1);
    if(Compare($candidate->(\@arg7),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
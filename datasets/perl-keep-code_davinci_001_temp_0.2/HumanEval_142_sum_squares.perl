# "
# This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
# multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
# change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
# Examples:
# For lst = [1,2,3] the output should be 6
# For lst = []  the output should be 0
# For lst = [-1,-5,2,-1,-5]  the output should be -126
sub sum_squares {
    my($lst) = @_;
    my $sum = 0;
    for (my $i = 0; $i < scalar(@$lst); $i++) {
        if ($i % 3 == 0) {
            $sum += $lst->[$i] * $lst->[$i];
        } elsif ($i % 4 == 0 && $i % 3 != 0) {
            $sum += $lst->[$i] * $lst->[$i] * $lst->[$i];
        }
    }
    return $sum;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&sum_squares;
    my @arg0 = (1, 2, 3);
    if(Compare($candidate->(\@arg0),6)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 4, 9);
    if(Compare($candidate->(\@arg1),14)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 4, 9);
    my @arg2 = ();
    if(Compare($candidate->(\@arg2),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 4, 9);
    my @arg2 = ();
    my @arg3 = (1, 1, 1, 1, 1, 1, 1, 1, 1);
    if(Compare($candidate->(\@arg3),9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 4, 9);
    my @arg2 = ();
    my @arg3 = (1, 1, 1, 1, 1, 1, 1, 1, 1);
    my @arg4 = (-1, -1, -1, -1, -1, -1, -1, -1, -1);
    if(Compare($candidate->(\@arg4),-3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 4, 9);
    my @arg2 = ();
    my @arg3 = (1, 1, 1, 1, 1, 1, 1, 1, 1);
    my @arg4 = (-1, -1, -1, -1, -1, -1, -1, -1, -1);
    my @arg5 = (0);
    if(Compare($candidate->(\@arg5),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 4, 9);
    my @arg2 = ();
    my @arg3 = (1, 1, 1, 1, 1, 1, 1, 1, 1);
    my @arg4 = (-1, -1, -1, -1, -1, -1, -1, -1, -1);
    my @arg5 = (0);
    my @arg6 = (-1, -5, 2, -1, -5);
    if(Compare($candidate->(\@arg6),-126)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 4, 9);
    my @arg2 = ();
    my @arg3 = (1, 1, 1, 1, 1, 1, 1, 1, 1);
    my @arg4 = (-1, -1, -1, -1, -1, -1, -1, -1, -1);
    my @arg5 = (0);
    my @arg6 = (-1, -5, 2, -1, -5);
    my @arg7 = (-56, -99, 1, 0, -2);
    if(Compare($candidate->(\@arg7),3030)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 4, 9);
    my @arg2 = ();
    my @arg3 = (1, 1, 1, 1, 1, 1, 1, 1, 1);
    my @arg4 = (-1, -1, -1, -1, -1, -1, -1, -1, -1);
    my @arg5 = (0);
    my @arg6 = (-1, -5, 2, -1, -5);
    my @arg7 = (-56, -99, 1, 0, -2);
    my @arg8 = (-1, 0, 0, 0, 0, 0, 0, 0, -1);
    if(Compare($candidate->(\@arg8),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 4, 9);
    my @arg2 = ();
    my @arg3 = (1, 1, 1, 1, 1, 1, 1, 1, 1);
    my @arg4 = (-1, -1, -1, -1, -1, -1, -1, -1, -1);
    my @arg5 = (0);
    my @arg6 = (-1, -5, 2, -1, -5);
    my @arg7 = (-56, -99, 1, 0, -2);
    my @arg8 = (-1, 0, 0, 0, 0, 0, 0, 0, -1);
    my @arg9 = (-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37);
    if(Compare($candidate->(\@arg9),-14196)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (1, 4, 9);
    my @arg2 = ();
    my @arg3 = (1, 1, 1, 1, 1, 1, 1, 1, 1);
    my @arg4 = (-1, -1, -1, -1, -1, -1, -1, -1, -1);
    my @arg5 = (0);
    my @arg6 = (-1, -5, 2, -1, -5);
    my @arg7 = (-56, -99, 1, 0, -2);
    my @arg8 = (-1, 0, 0, 0, 0, 0, 0, 0, -1);
    my @arg9 = (-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37);
    my @arg10 = (-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10);
    if(Compare($candidate->(\@arg10),-1448)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
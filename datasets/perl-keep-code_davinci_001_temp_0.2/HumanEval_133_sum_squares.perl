# You are given a list of numbers.
# You need to return the sum of squared numbers in the given list,
# round each element in the list to the upper int(Ceiling) first.
# Examples:
# For lst = [1,2,3] the output should be 14
# For lst = [1,4,9] the output should be 98
# For lst = [1,3,5,7] the output should be 84
# For lst = [1.4,4.2,0] the output should be 29
# For lst = [-2.4,1,1] the output should be 6
sub sum_squares {
    my($lst) = @_;
    my $sum = 0;
    for my $i (@$lst) {
        $sum += int($i) ** 2;
    }
    return $sum;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&sum_squares;
    my @arg0 = (1.0, 2.0, 3.0);
    if(Compare($candidate->(\@arg0),14)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0, 3.0);
    my @arg1 = (1.0, 2.0, 3.0);
    if(Compare($candidate->(\@arg1),14)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0, 3.0);
    my @arg1 = (1.0, 2.0, 3.0);
    my @arg2 = (1.0, 3.0, 5.0, 7.0);
    if(Compare($candidate->(\@arg2),84)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0, 3.0);
    my @arg1 = (1.0, 2.0, 3.0);
    my @arg2 = (1.0, 3.0, 5.0, 7.0);
    my @arg3 = (1.4, 4.2, 0.0);
    if(Compare($candidate->(\@arg3),29)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0, 3.0);
    my @arg1 = (1.0, 2.0, 3.0);
    my @arg2 = (1.0, 3.0, 5.0, 7.0);
    my @arg3 = (1.4, 4.2, 0.0);
    my @arg4 = (-2.4, 1.0, 1.0);
    if(Compare($candidate->(\@arg4),6)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0, 3.0);
    my @arg1 = (1.0, 2.0, 3.0);
    my @arg2 = (1.0, 3.0, 5.0, 7.0);
    my @arg3 = (1.4, 4.2, 0.0);
    my @arg4 = (-2.4, 1.0, 1.0);
    my @arg5 = (100.0, 1.0, 15.0, 2.0);
    if(Compare($candidate->(\@arg5),10230)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0, 3.0);
    my @arg1 = (1.0, 2.0, 3.0);
    my @arg2 = (1.0, 3.0, 5.0, 7.0);
    my @arg3 = (1.4, 4.2, 0.0);
    my @arg4 = (-2.4, 1.0, 1.0);
    my @arg5 = (100.0, 1.0, 15.0, 2.0);
    my @arg6 = (10000.0, 10000.0);
    if(Compare($candidate->(\@arg6),200000000)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0, 3.0);
    my @arg1 = (1.0, 2.0, 3.0);
    my @arg2 = (1.0, 3.0, 5.0, 7.0);
    my @arg3 = (1.4, 4.2, 0.0);
    my @arg4 = (-2.4, 1.0, 1.0);
    my @arg5 = (100.0, 1.0, 15.0, 2.0);
    my @arg6 = (10000.0, 10000.0);
    my @arg7 = (-1.4, 4.6, 6.3);
    if(Compare($candidate->(\@arg7),75)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0, 3.0);
    my @arg1 = (1.0, 2.0, 3.0);
    my @arg2 = (1.0, 3.0, 5.0, 7.0);
    my @arg3 = (1.4, 4.2, 0.0);
    my @arg4 = (-2.4, 1.0, 1.0);
    my @arg5 = (100.0, 1.0, 15.0, 2.0);
    my @arg6 = (10000.0, 10000.0);
    my @arg7 = (-1.4, 4.6, 6.3);
    my @arg8 = (-1.4, 17.9, 18.9, 19.9);
    if(Compare($candidate->(\@arg8),1086)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0, 3.0);
    my @arg1 = (1.0, 2.0, 3.0);
    my @arg2 = (1.0, 3.0, 5.0, 7.0);
    my @arg3 = (1.4, 4.2, 0.0);
    my @arg4 = (-2.4, 1.0, 1.0);
    my @arg5 = (100.0, 1.0, 15.0, 2.0);
    my @arg6 = (10000.0, 10000.0);
    my @arg7 = (-1.4, 4.6, 6.3);
    my @arg8 = (-1.4, 17.9, 18.9, 19.9);
    my @arg9 = (0.0);
    if(Compare($candidate->(\@arg9),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0, 3.0);
    my @arg1 = (1.0, 2.0, 3.0);
    my @arg2 = (1.0, 3.0, 5.0, 7.0);
    my @arg3 = (1.4, 4.2, 0.0);
    my @arg4 = (-2.4, 1.0, 1.0);
    my @arg5 = (100.0, 1.0, 15.0, 2.0);
    my @arg6 = (10000.0, 10000.0);
    my @arg7 = (-1.4, 4.6, 6.3);
    my @arg8 = (-1.4, 17.9, 18.9, 19.9);
    my @arg9 = (0.0);
    my @arg10 = (-1.0);
    if(Compare($candidate->(\@arg10),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1.0, 2.0, 3.0);
    my @arg1 = (1.0, 2.0, 3.0);
    my @arg2 = (1.0, 3.0, 5.0, 7.0);
    my @arg3 = (1.4, 4.2, 0.0);
    my @arg4 = (-2.4, 1.0, 1.0);
    my @arg5 = (100.0, 1.0, 15.0, 2.0);
    my @arg6 = (10000.0, 10000.0);
    my @arg7 = (-1.4, 4.6, 6.3);
    my @arg8 = (-1.4, 17.9, 18.9, 19.9);
    my @arg9 = (0.0);
    my @arg10 = (-1.0);
    my @arg11 = (-1.0, 1.0, 0.0);
    if(Compare($candidate->(\@arg11),2)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
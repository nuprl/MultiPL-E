# Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
# Examples
# solution([5, 8, 7, 1]) ==> 12
# solution([3, 3, 3, 3, 3]) ==> 9
# solution([30, 13, 24, 321]) ==>0
sub solution {
    my($lst) = @_;
    my $sum = 0;
    for (my $i = 0; $i < @$lst; $i += 2) {
        $sum += $lst->[$i];
    }
    return $sum;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&solution;
    my @arg0 = (5, 8, 7, 1);
    if(Compare($candidate->(\@arg0),12)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, 8, 7, 1);
    my @arg1 = (3, 3, 3, 3, 3);
    if(Compare($candidate->(\@arg1),9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, 8, 7, 1);
    my @arg1 = (3, 3, 3, 3, 3);
    my @arg2 = (30, 13, 24, 321);
    if(Compare($candidate->(\@arg2),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, 8, 7, 1);
    my @arg1 = (3, 3, 3, 3, 3);
    my @arg2 = (30, 13, 24, 321);
    my @arg3 = (5, 9);
    if(Compare($candidate->(\@arg3),5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, 8, 7, 1);
    my @arg1 = (3, 3, 3, 3, 3);
    my @arg2 = (30, 13, 24, 321);
    my @arg3 = (5, 9);
    my @arg4 = (2, 4, 8);
    if(Compare($candidate->(\@arg4),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, 8, 7, 1);
    my @arg1 = (3, 3, 3, 3, 3);
    my @arg2 = (30, 13, 24, 321);
    my @arg3 = (5, 9);
    my @arg4 = (2, 4, 8);
    my @arg5 = (30, 13, 23, 32);
    if(Compare($candidate->(\@arg5),23)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, 8, 7, 1);
    my @arg1 = (3, 3, 3, 3, 3);
    my @arg2 = (30, 13, 24, 321);
    my @arg3 = (5, 9);
    my @arg4 = (2, 4, 8);
    my @arg5 = (30, 13, 23, 32);
    my @arg6 = (3, 13, 2, 9);
    if(Compare($candidate->(\@arg6),3)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
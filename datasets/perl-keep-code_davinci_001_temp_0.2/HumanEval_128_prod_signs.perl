# You are given an array arr of integers and you need to return
# sum of magnitudes of integers multiplied by product of all signs
# of each number in the array, represented by 1, -1 or 0.
# Note: return None for empty arr.
# Example:
# >>> prod_signs([1, 2, 2, -4]) == -9
# >>> prod_signs([0, 1]) == 0
# >>> prod_signs([]) == None
sub prod_signs {
    my($arr) = @_;
    my $sum = 0;
    my $prod = 1;
    foreach my $a (@$arr) {
        $sum += abs($a);
        $prod *= $a > 0 ? 1 : $a < 0 ? -1 : 0;
    }
    return $sum * $prod;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&prod_signs;
    my @arg0 = (1, 2, 2, -4);
    if(Compare($candidate->(\@arg0),-9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 2, -4);
    my @arg1 = (0, 1);
    if(Compare($candidate->(\@arg1),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 2, -4);
    my @arg1 = (0, 1);
    my @arg2 = (1, 1, 1, 2, 3, -1, 1);
    if(Compare($candidate->(\@arg2),-10)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 2, -4);
    my @arg1 = (0, 1);
    my @arg2 = (1, 1, 1, 2, 3, -1, 1);
    my @arg3 = ();
    if(Compare($candidate->(\@arg3),#f)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 2, -4);
    my @arg1 = (0, 1);
    my @arg2 = (1, 1, 1, 2, 3, -1, 1);
    my @arg3 = ();
    my @arg4 = (2, 4, 1, 2, -1, -1, 9);
    if(Compare($candidate->(\@arg4),20)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 2, -4);
    my @arg1 = (0, 1);
    my @arg2 = (1, 1, 1, 2, 3, -1, 1);
    my @arg3 = ();
    my @arg4 = (2, 4, 1, 2, -1, -1, 9);
    my @arg5 = (-1, 1, -1, 1);
    if(Compare($candidate->(\@arg5),4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 2, -4);
    my @arg1 = (0, 1);
    my @arg2 = (1, 1, 1, 2, 3, -1, 1);
    my @arg3 = ();
    my @arg4 = (2, 4, 1, 2, -1, -1, 9);
    my @arg5 = (-1, 1, -1, 1);
    my @arg6 = (-1, 1, 1, 1);
    if(Compare($candidate->(\@arg6),-4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 2, -4);
    my @arg1 = (0, 1);
    my @arg2 = (1, 1, 1, 2, 3, -1, 1);
    my @arg3 = ();
    my @arg4 = (2, 4, 1, 2, -1, -1, 9);
    my @arg5 = (-1, 1, -1, 1);
    my @arg6 = (-1, 1, 1, 1);
    my @arg7 = (-1, 1, 1, 0);
    if(Compare($candidate->(\@arg7),0)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
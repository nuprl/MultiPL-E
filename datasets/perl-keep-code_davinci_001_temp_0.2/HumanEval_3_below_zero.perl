# You're given a list of deposit and withdrawal operations on a bank account that starts with
# zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
# at that point function should return True. Otherwise it should return False.
# >>> below_zero([1, 2, 3])
# False
# >>> below_zero([1, 2, -4, 5])
# True
sub below_zero {
    my($operations) = @_;
    my $balance = 0;
    for my $op (@$operations) {
        $balance += $op;
        return 1 if $balance < 0;
    }
    return 0;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&below_zero;
    my @arg0 = ();
    if(Compare($candidate->(\@arg0),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (1, 2, -3, 1, 2, -3);
    if(Compare($candidate->(\@arg1),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (1, 2, -3, 1, 2, -3);
    my @arg2 = (1, 2, -4, 5, 6);
    if(Compare($candidate->(\@arg2),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (1, 2, -3, 1, 2, -3);
    my @arg2 = (1, 2, -4, 5, 6);
    my @arg3 = (1, -1, 2, -2, 5, -5, 4, -4);
    if(Compare($candidate->(\@arg3),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (1, 2, -3, 1, 2, -3);
    my @arg2 = (1, 2, -4, 5, 6);
    my @arg3 = (1, -1, 2, -2, 5, -5, 4, -4);
    my @arg4 = (1, -1, 2, -2, 5, -5, 4, -5);
    if(Compare($candidate->(\@arg4),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (1, 2, -3, 1, 2, -3);
    my @arg2 = (1, 2, -4, 5, 6);
    my @arg3 = (1, -1, 2, -2, 5, -5, 4, -4);
    my @arg4 = (1, -1, 2, -2, 5, -5, 4, -5);
    my @arg5 = (1, -2, 2, -2, 5, -5, 4, -4);
    if(Compare($candidate->(\@arg5),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
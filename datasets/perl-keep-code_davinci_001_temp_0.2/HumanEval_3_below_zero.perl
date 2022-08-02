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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&below_zero;
        if(eq_deeply($candidate->([]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, -3, 1, 2, -3]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, -4, 5, 6]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, -1, 2, -2, 5, -5, 4, -4]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, -1, 2, -2, 5, -5, 4, -5]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, -2, 2, -2, 5, -5, 4, -4]),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
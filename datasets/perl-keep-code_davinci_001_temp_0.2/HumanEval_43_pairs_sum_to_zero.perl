# pairs_sum_to_zero takes a list of integers as an input.
# it returns True if there are two distinct elements in the list that
# sum to zero, and False otherwise.
# >>> pairs_sum_to_zero([1, 3, 5, 0])
# False
# >>> pairs_sum_to_zero([1, 3, -2, 1])
# False
# >>> pairs_sum_to_zero([1, 2, 3, 7])
# False
# >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
# True
# >>> pairs_sum_to_zero([1])
# False
sub pairs_sum_to_zero {
    my($l) = @_;
    my %h;
    foreach my $x (@$l) {
        if (exists $h{$x}) {
            return 1;
        }
        $h{-$x} = 1;
    }
    return 0;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&pairs_sum_to_zero;
    my @arg0 = (1, 3, 5, 0);
    if(Compare($candidate->(\@arg0),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, -2, 1);
    if(Compare($candidate->(\@arg1),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, -2, 1);
    my @arg2 = (1, 2, 3, 7);
    if(Compare($candidate->(\@arg2),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, -2, 1);
    my @arg2 = (1, 2, 3, 7);
    my @arg3 = (2, 4, -5, 3, 5, 7);
    if(Compare($candidate->(\@arg3),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, -2, 1);
    my @arg2 = (1, 2, 3, 7);
    my @arg3 = (2, 4, -5, 3, 5, 7);
    my @arg4 = (1);
    if(Compare($candidate->(\@arg4),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, -2, 1);
    my @arg2 = (1, 2, 3, 7);
    my @arg3 = (2, 4, -5, 3, 5, 7);
    my @arg4 = (1);
    my @arg5 = (-3, 9, -1, 3, 2, 30);
    if(Compare($candidate->(\@arg5),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, -2, 1);
    my @arg2 = (1, 2, 3, 7);
    my @arg3 = (2, 4, -5, 3, 5, 7);
    my @arg4 = (1);
    my @arg5 = (-3, 9, -1, 3, 2, 30);
    my @arg6 = (-3, 9, -1, 3, 2, 31);
    if(Compare($candidate->(\@arg6),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, -2, 1);
    my @arg2 = (1, 2, 3, 7);
    my @arg3 = (2, 4, -5, 3, 5, 7);
    my @arg4 = (1);
    my @arg5 = (-3, 9, -1, 3, 2, 30);
    my @arg6 = (-3, 9, -1, 3, 2, 31);
    my @arg7 = (-3, 9, -1, 4, 2, 30);
    if(Compare($candidate->(\@arg7),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, -2, 1);
    my @arg2 = (1, 2, 3, 7);
    my @arg3 = (2, 4, -5, 3, 5, 7);
    my @arg4 = (1);
    my @arg5 = (-3, 9, -1, 3, 2, 30);
    my @arg6 = (-3, 9, -1, 3, 2, 31);
    my @arg7 = (-3, 9, -1, 4, 2, 30);
    my @arg8 = (-3, 9, -1, 4, 2, 31);
    if(Compare($candidate->(\@arg8),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
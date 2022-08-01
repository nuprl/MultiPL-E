# Given a list of numbers, return whether or not they are sorted
# in ascending order. If list has more than 1 duplicate of the same
# number, return False. Assume no negative numbers and only integers.
# Examples
# is_sorted([5]) ➞ True
# is_sorted([1, 2, 3, 4, 5]) ➞ True
# is_sorted([1, 3, 2, 4, 5]) ➞ False
# is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
# is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
# is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
# is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
# is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
sub is_sorted {
    my($lst) = @_;
    my $prev = -1;
    for my $i (@$lst) {
        if ($i < $prev) {
            return 0;
        }
        $prev = $i;
    }
    return 1;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&is_sorted;
    my @arg0 = (5);
    if(Compare($candidate->(\@arg0),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    if(Compare($candidate->(\@arg1),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    my @arg2 = (1, 3, 2, 4, 5);
    if(Compare($candidate->(\@arg2),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    my @arg2 = (1, 3, 2, 4, 5);
    my @arg3 = (1, 2, 3, 4, 5, 6);
    if(Compare($candidate->(\@arg3),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    my @arg2 = (1, 3, 2, 4, 5);
    my @arg3 = (1, 2, 3, 4, 5, 6);
    my @arg4 = (1, 2, 3, 4, 5, 6, 7);
    if(Compare($candidate->(\@arg4),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    my @arg2 = (1, 3, 2, 4, 5);
    my @arg3 = (1, 2, 3, 4, 5, 6);
    my @arg4 = (1, 2, 3, 4, 5, 6, 7);
    my @arg5 = (1, 3, 2, 4, 5, 6, 7);
    if(Compare($candidate->(\@arg5),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    my @arg2 = (1, 3, 2, 4, 5);
    my @arg3 = (1, 2, 3, 4, 5, 6);
    my @arg4 = (1, 2, 3, 4, 5, 6, 7);
    my @arg5 = (1, 3, 2, 4, 5, 6, 7);
    my @arg6 = ();
    if(Compare($candidate->(\@arg6),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    my @arg2 = (1, 3, 2, 4, 5);
    my @arg3 = (1, 2, 3, 4, 5, 6);
    my @arg4 = (1, 2, 3, 4, 5, 6, 7);
    my @arg5 = (1, 3, 2, 4, 5, 6, 7);
    my @arg6 = ();
    my @arg7 = (1);
    if(Compare($candidate->(\@arg7),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    my @arg2 = (1, 3, 2, 4, 5);
    my @arg3 = (1, 2, 3, 4, 5, 6);
    my @arg4 = (1, 2, 3, 4, 5, 6, 7);
    my @arg5 = (1, 3, 2, 4, 5, 6, 7);
    my @arg6 = ();
    my @arg7 = (1);
    my @arg8 = (3, 2, 1);
    if(Compare($candidate->(\@arg8),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    my @arg2 = (1, 3, 2, 4, 5);
    my @arg3 = (1, 2, 3, 4, 5, 6);
    my @arg4 = (1, 2, 3, 4, 5, 6, 7);
    my @arg5 = (1, 3, 2, 4, 5, 6, 7);
    my @arg6 = ();
    my @arg7 = (1);
    my @arg8 = (3, 2, 1);
    my @arg9 = (1, 2, 2, 2, 3, 4);
    if(Compare($candidate->(\@arg9),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    my @arg2 = (1, 3, 2, 4, 5);
    my @arg3 = (1, 2, 3, 4, 5, 6);
    my @arg4 = (1, 2, 3, 4, 5, 6, 7);
    my @arg5 = (1, 3, 2, 4, 5, 6, 7);
    my @arg6 = ();
    my @arg7 = (1);
    my @arg8 = (3, 2, 1);
    my @arg9 = (1, 2, 2, 2, 3, 4);
    my @arg10 = (1, 2, 3, 3, 3, 4);
    if(Compare($candidate->(\@arg10),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    my @arg2 = (1, 3, 2, 4, 5);
    my @arg3 = (1, 2, 3, 4, 5, 6);
    my @arg4 = (1, 2, 3, 4, 5, 6, 7);
    my @arg5 = (1, 3, 2, 4, 5, 6, 7);
    my @arg6 = ();
    my @arg7 = (1);
    my @arg8 = (3, 2, 1);
    my @arg9 = (1, 2, 2, 2, 3, 4);
    my @arg10 = (1, 2, 3, 3, 3, 4);
    my @arg11 = (1, 2, 2, 3, 3, 4);
    if(Compare($candidate->(\@arg11),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5);
    my @arg1 = (1, 2, 3, 4, 5);
    my @arg2 = (1, 3, 2, 4, 5);
    my @arg3 = (1, 2, 3, 4, 5, 6);
    my @arg4 = (1, 2, 3, 4, 5, 6, 7);
    my @arg5 = (1, 3, 2, 4, 5, 6, 7);
    my @arg6 = ();
    my @arg7 = (1);
    my @arg8 = (3, 2, 1);
    my @arg9 = (1, 2, 2, 2, 3, 4);
    my @arg10 = (1, 2, 3, 3, 3, 4);
    my @arg11 = (1, 2, 2, 3, 3, 4);
    my @arg12 = (1, 2, 3, 4);
    if(Compare($candidate->(\@arg12),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
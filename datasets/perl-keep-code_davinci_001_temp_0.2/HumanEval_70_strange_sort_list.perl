# Given list of integers, return list in strange order.
# Strange sorting, is when you start with the minimum value,
# then maximum of the remaining integers, then minimum and so on.
# Examples:
# strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
# strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
# strange_sort_list([]) == []
sub strange_sort_list {
    my($lst) = @_;
    my @sorted = sort { $a <=> $b } @$lst;
    my @result;
    my $i = 0;
    while(@sorted) {
        push @result, shift @sorted;
        if(@sorted) {
            push @result, pop @sorted;
        }
    }
    return @result;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&strange_sort_list;
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 4, 2, 3);
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 4, 2, 3);
    my @arg2 = (5, 6, 7, 8, 9);
    my @arg3 = (5, 9, 6, 8, 7);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 4, 2, 3);
    my @arg2 = (5, 6, 7, 8, 9);
    my @arg3 = (5, 9, 6, 8, 7);
    my @arg4 = (1, 2, 3, 4, 5);
    my @arg5 = (1, 5, 2, 4, 3);
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 4, 2, 3);
    my @arg2 = (5, 6, 7, 8, 9);
    my @arg3 = (5, 9, 6, 8, 7);
    my @arg4 = (1, 2, 3, 4, 5);
    my @arg5 = (1, 5, 2, 4, 3);
    my @arg6 = (5, 6, 7, 8, 9, 1);
    my @arg7 = (1, 9, 5, 8, 6, 7);
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 4, 2, 3);
    my @arg2 = (5, 6, 7, 8, 9);
    my @arg3 = (5, 9, 6, 8, 7);
    my @arg4 = (1, 2, 3, 4, 5);
    my @arg5 = (1, 5, 2, 4, 3);
    my @arg6 = (5, 6, 7, 8, 9, 1);
    my @arg7 = (1, 9, 5, 8, 6, 7);
    my @arg8 = (5, 5, 5, 5);
    my @arg9 = (5, 5, 5, 5);
    if(Compare($candidate->(\@arg8),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 4, 2, 3);
    my @arg2 = (5, 6, 7, 8, 9);
    my @arg3 = (5, 9, 6, 8, 7);
    my @arg4 = (1, 2, 3, 4, 5);
    my @arg5 = (1, 5, 2, 4, 3);
    my @arg6 = (5, 6, 7, 8, 9, 1);
    my @arg7 = (1, 9, 5, 8, 6, 7);
    my @arg8 = (5, 5, 5, 5);
    my @arg9 = (5, 5, 5, 5);
    my @arg10 = ();
    my @arg11 = ();
    if(Compare($candidate->(\@arg10),\@arg11)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 4, 2, 3);
    my @arg2 = (5, 6, 7, 8, 9);
    my @arg3 = (5, 9, 6, 8, 7);
    my @arg4 = (1, 2, 3, 4, 5);
    my @arg5 = (1, 5, 2, 4, 3);
    my @arg6 = (5, 6, 7, 8, 9, 1);
    my @arg7 = (1, 9, 5, 8, 6, 7);
    my @arg8 = (5, 5, 5, 5);
    my @arg9 = (5, 5, 5, 5);
    my @arg10 = ();
    my @arg11 = ();
    my @arg12 = (1, 2, 3, 4, 5, 6, 7, 8);
    my @arg13 = (1, 8, 2, 7, 3, 6, 4, 5);
    if(Compare($candidate->(\@arg12),\@arg13)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 4, 2, 3);
    my @arg2 = (5, 6, 7, 8, 9);
    my @arg3 = (5, 9, 6, 8, 7);
    my @arg4 = (1, 2, 3, 4, 5);
    my @arg5 = (1, 5, 2, 4, 3);
    my @arg6 = (5, 6, 7, 8, 9, 1);
    my @arg7 = (1, 9, 5, 8, 6, 7);
    my @arg8 = (5, 5, 5, 5);
    my @arg9 = (5, 5, 5, 5);
    my @arg10 = ();
    my @arg11 = ();
    my @arg12 = (1, 2, 3, 4, 5, 6, 7, 8);
    my @arg13 = (1, 8, 2, 7, 3, 6, 4, 5);
    my @arg14 = (0, 2, 2, 2, 5, 5, -5, -5);
    my @arg15 = (-5, 5, -5, 5, 0, 2, 2, 2);
    if(Compare($candidate->(\@arg14),\@arg15)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 4, 2, 3);
    my @arg2 = (5, 6, 7, 8, 9);
    my @arg3 = (5, 9, 6, 8, 7);
    my @arg4 = (1, 2, 3, 4, 5);
    my @arg5 = (1, 5, 2, 4, 3);
    my @arg6 = (5, 6, 7, 8, 9, 1);
    my @arg7 = (1, 9, 5, 8, 6, 7);
    my @arg8 = (5, 5, 5, 5);
    my @arg9 = (5, 5, 5, 5);
    my @arg10 = ();
    my @arg11 = ();
    my @arg12 = (1, 2, 3, 4, 5, 6, 7, 8);
    my @arg13 = (1, 8, 2, 7, 3, 6, 4, 5);
    my @arg14 = (0, 2, 2, 2, 5, 5, -5, -5);
    my @arg15 = (-5, 5, -5, 5, 0, 2, 2, 2);
    my @arg16 = (111111);
    my @arg17 = (111111);
    if(Compare($candidate->(\@arg16),\@arg17)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
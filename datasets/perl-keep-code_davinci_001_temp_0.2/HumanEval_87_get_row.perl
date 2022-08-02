# You are given a 2 dimensional data, as a nested lists,
# which is similar to matrix, however, unlike matrices,
# each row may contain a different number of columns.
# Given lst, and integer x, find integers x in the list,
# and return list of tuples, [(x1, y1), (x2, y2) ...] such that
# each tuple is a coordinate - (row, columns), starting with 0.
# Sort coordinates initially by rows in ascending order.
# Also, sort coordinates of the row by columns in descending order.
# Examples:
# get_row([
# [1,2,3,4,5,6],
# [1,2,3,4,1,6],
# [1,2,3,4,5,1]
# ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
# get_row([], 1) == []
# get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
sub get_row {
    my($lst, $x) = @_;
    my @result;
    my $row = 0;
    my $col = 0;
    my $found = 0;
    my $row_count = 0;
    my $col_count = 0;
    my $row_length = 0;
    my $col_length = 0;
    my $row_index = 0;
    my $col_index = 0;
    my $row_index_temp = 0;
    my $col_index_temp = 0;
    my $row_index_temp_temp = 0;
    my $col_index_temp_temp = 0;
    my $row_index_temp_temp_temp = 0;
    my $col_index_temp_temp_temp = 0;
    my $row_index_temp_temp_temp_temp = 0;
    my $col_index_temp_temp_temp_temp = 0;
    my $row_index_temp_temp_temp_temp_temp = 0;
    my $col_index_temp_temp_temp_temp_temp = 0;
    my $row_index_temp_temp_temp_temp_temp_temp = 0;
    my $col_index_temp_temp_temp_temp_temp_temp = 0;
    my $row_index_temp_temp_temp_temp_temp_temp_temp = 0;
    my $col_index_temp_temp_temp_temp_temp_temp_temp = 0;
    my $row_index_temp_temp_temp_temp_temp_temp_temp_temp = 0;
    my $col_index_temp_temp_temp_temp_temp_temp_temp_temp = 0;
    my $row_index_temp_temp_temp_temp_temp_temp_temp_temp_temp = 0;
    my $col_index_temp_temp_temp_temp_temp_temp_temp_temp_temp = 0;
    my $row_index_temp_temp_temp_temp_temp_temp_temp_temp_temp_temp = 0;
    my $col_index_temp_temp_temp_temp_temp_temp_

use Data::Compare;


sub testhumaneval {
    my $candidate = \&get_row;
    my @arg0 = (1, 2, 3, 4, 5, 6);
    my @arg1 = (1, 2, 3, 4, 1, 6);
    my @arg2 = (1, 2, 3, 4, 5, 1);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = ((0, 0), (1, 4), (1, 0), (2, 5), (2, 0));
    if(Compare($candidate->(\@arg3, 1),\@arg4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4, 5, 6);
    my @arg1 = (1, 2, 3, 4, 1, 6);
    my @arg2 = (1, 2, 3, 4, 5, 1);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = ((0, 0), (1, 4), (1, 0), (2, 5), (2, 0));
    my @arg5 = (1, 2, 3, 4, 5, 6);
    my @arg6 = (1, 2, 3, 4, 5, 6);
    my @arg7 = (1, 2, 3, 4, 5, 6);
    my @arg8 = (1, 2, 3, 4, 5, 6);
    my @arg9 = (1, 2, 3, 4, 5, 6);
    my @arg10 = (1, 2, 3, 4, 5, 6);
    my @arg11 = (\@arg5, \@arg6, \@arg7, \@arg8, \@arg9, \@arg10);
    my @arg12 = ((0, 1), (1, 1), (2, 1), (3, 1), (4, 1), (5, 1));
    if(Compare($candidate->(\@arg11, 2),\@arg12)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4, 5, 6);
    my @arg1 = (1, 2, 3, 4, 1, 6);
    my @arg2 = (1, 2, 3, 4, 5, 1);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = ((0, 0), (1, 4), (1, 0), (2, 5), (2, 0));
    my @arg5 = (1, 2, 3, 4, 5, 6);
    my @arg6 = (1, 2, 3, 4, 5, 6);
    my @arg7 = (1, 2, 3, 4, 5, 6);
    my @arg8 = (1, 2, 3, 4, 5, 6);
    my @arg9 = (1, 2, 3, 4, 5, 6);
    my @arg10 = (1, 2, 3, 4, 5, 6);
    my @arg11 = (\@arg5, \@arg6, \@arg7, \@arg8, \@arg9, \@arg10);
    my @arg12 = ((0, 1), (1, 1), (2, 1), (3, 1), (4, 1), (5, 1));
    my @arg13 = (1, 2, 3, 4, 5, 6);
    my @arg14 = (1, 2, 3, 4, 5, 6);
    my @arg15 = (1, 1, 3, 4, 5, 6);
    my @arg16 = (1, 2, 1, 4, 5, 6);
    my @arg17 = (1, 2, 3, 1, 5, 6);
    my @arg18 = (1, 2, 3, 4, 1, 6);
    my @arg19 = (1, 2, 3, 4, 5, 1);
    my @arg20 = (\@arg13, \@arg14, \@arg15, \@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = ((0, 0), (1, 0), (2, 1), (2, 0), (3, 2), (3, 0), (4, 3), (4, 0), (5, 4), (5, 0), (6, 5), (6, 0));
    if(Compare($candidate->(\@arg20, 1),\@arg21)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4, 5, 6);
    my @arg1 = (1, 2, 3, 4, 1, 6);
    my @arg2 = (1, 2, 3, 4, 5, 1);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = ((0, 0), (1, 4), (1, 0), (2, 5), (2, 0));
    my @arg5 = (1, 2, 3, 4, 5, 6);
    my @arg6 = (1, 2, 3, 4, 5, 6);
    my @arg7 = (1, 2, 3, 4, 5, 6);
    my @arg8 = (1, 2, 3, 4, 5, 6);
    my @arg9 = (1, 2, 3, 4, 5, 6);
    my @arg10 = (1, 2, 3, 4, 5, 6);
    my @arg11 = (\@arg5, \@arg6, \@arg7, \@arg8, \@arg9, \@arg10);
    my @arg12 = ((0, 1), (1, 1), (2, 1), (3, 1), (4, 1), (5, 1));
    my @arg13 = (1, 2, 3, 4, 5, 6);
    my @arg14 = (1, 2, 3, 4, 5, 6);
    my @arg15 = (1, 1, 3, 4, 5, 6);
    my @arg16 = (1, 2, 1, 4, 5, 6);
    my @arg17 = (1, 2, 3, 1, 5, 6);
    my @arg18 = (1, 2, 3, 4, 1, 6);
    my @arg19 = (1, 2, 3, 4, 5, 1);
    my @arg20 = (\@arg13, \@arg14, \@arg15, \@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = ((0, 0), (1, 0), (2, 1), (2, 0), (3, 2), (3, 0), (4, 3), (4, 0), (5, 4), (5, 0), (6, 5), (6, 0));
    my @arg22 = ();
    my @arg23 = ();
    if(Compare($candidate->(\@arg22, 1),\@arg23)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4, 5, 6);
    my @arg1 = (1, 2, 3, 4, 1, 6);
    my @arg2 = (1, 2, 3, 4, 5, 1);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = ((0, 0), (1, 4), (1, 0), (2, 5), (2, 0));
    my @arg5 = (1, 2, 3, 4, 5, 6);
    my @arg6 = (1, 2, 3, 4, 5, 6);
    my @arg7 = (1, 2, 3, 4, 5, 6);
    my @arg8 = (1, 2, 3, 4, 5, 6);
    my @arg9 = (1, 2, 3, 4, 5, 6);
    my @arg10 = (1, 2, 3, 4, 5, 6);
    my @arg11 = (\@arg5, \@arg6, \@arg7, \@arg8, \@arg9, \@arg10);
    my @arg12 = ((0, 1), (1, 1), (2, 1), (3, 1), (4, 1), (5, 1));
    my @arg13 = (1, 2, 3, 4, 5, 6);
    my @arg14 = (1, 2, 3, 4, 5, 6);
    my @arg15 = (1, 1, 3, 4, 5, 6);
    my @arg16 = (1, 2, 1, 4, 5, 6);
    my @arg17 = (1, 2, 3, 1, 5, 6);
    my @arg18 = (1, 2, 3, 4, 1, 6);
    my @arg19 = (1, 2, 3, 4, 5, 1);
    my @arg20 = (\@arg13, \@arg14, \@arg15, \@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = ((0, 0), (1, 0), (2, 1), (2, 0), (3, 2), (3, 0), (4, 3), (4, 0), (5, 4), (5, 0), (6, 5), (6, 0));
    my @arg22 = ();
    my @arg23 = ();
    my @arg24 = (1);
    my @arg25 = (\@arg24);
    my @arg26 = ();
    if(Compare($candidate->(\@arg25, 2),\@arg26)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4, 5, 6);
    my @arg1 = (1, 2, 3, 4, 1, 6);
    my @arg2 = (1, 2, 3, 4, 5, 1);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = ((0, 0), (1, 4), (1, 0), (2, 5), (2, 0));
    my @arg5 = (1, 2, 3, 4, 5, 6);
    my @arg6 = (1, 2, 3, 4, 5, 6);
    my @arg7 = (1, 2, 3, 4, 5, 6);
    my @arg8 = (1, 2, 3, 4, 5, 6);
    my @arg9 = (1, 2, 3, 4, 5, 6);
    my @arg10 = (1, 2, 3, 4, 5, 6);
    my @arg11 = (\@arg5, \@arg6, \@arg7, \@arg8, \@arg9, \@arg10);
    my @arg12 = ((0, 1), (1, 1), (2, 1), (3, 1), (4, 1), (5, 1));
    my @arg13 = (1, 2, 3, 4, 5, 6);
    my @arg14 = (1, 2, 3, 4, 5, 6);
    my @arg15 = (1, 1, 3, 4, 5, 6);
    my @arg16 = (1, 2, 1, 4, 5, 6);
    my @arg17 = (1, 2, 3, 1, 5, 6);
    my @arg18 = (1, 2, 3, 4, 1, 6);
    my @arg19 = (1, 2, 3, 4, 5, 1);
    my @arg20 = (\@arg13, \@arg14, \@arg15, \@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = ((0, 0), (1, 0), (2, 1), (2, 0), (3, 2), (3, 0), (4, 3), (4, 0), (5, 4), (5, 0), (6, 5), (6, 0));
    my @arg22 = ();
    my @arg23 = ();
    my @arg24 = (1);
    my @arg25 = (\@arg24);
    my @arg26 = ();
    my @arg27 = ();
    my @arg28 = (1);
    my @arg29 = (1, 2, 3);
    my @arg30 = (\@arg27, \@arg28, \@arg29);
    my @arg31 = ((2, 2));
    if(Compare($candidate->(\@arg30, 3),\@arg31)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
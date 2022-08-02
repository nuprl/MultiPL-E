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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&get_row;
        if(eq_deeply($candidate->([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], 1),[[0, 0], [1, 4], [1, 0], [2, 5], [2, 0]])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6]], 2),[[0, 1], [1, 1], [2, 1], [3, 1], [4, 1], [5, 1]])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 1, 3, 4, 5, 6], [1, 2, 1, 4, 5, 6], [1, 2, 3, 1, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], 1),[[0, 0], [1, 0], [2, 1], [2, 0], [3, 2], [3, 0], [4, 3], [4, 0], [5, 4], [5, 0], [6, 5], [6, 0]])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([], 1),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([[1]], 2),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([[], [1], [1, 2, 3]], 3),[[2, 2]])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
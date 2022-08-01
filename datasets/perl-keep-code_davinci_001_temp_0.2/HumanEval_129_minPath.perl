# Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
# each cell of the grid contains a value. Every integer in the range [1, N * N]
# inclusive appears exactly once on the cells of the grid.
# You have to find the minimum path of length k in the grid. You can start
# from any cell, and in each step you can move to any of the neighbor cells,
# in other words, you can go to cells which share an edge with you current
# cell.
# Please note that a path of length k means visiting exactly k cells (not
# necessarily distinct).
# You CANNOT go off the grid.
# A path A (of length k) is considered less than a path B (of length k) if
# after making the ordered lists of the values on the cells that A and B go
# through (let's call them lst_A and lst_B), lst_A is lexicographically less
# than lst_B, in other words, there exist an integer index i (1 <= i <= k)
# such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
# lst_A[j] = lst_B[j].
# It is guaranteed that the answer is unique.
# Return an ordered list of the values on the cells that the minimum path go through.
# Examples:
# Input: grid = [ [1,2,3], [4,5,6], [7,8,9]], k = 3
# Output: [1, 2, 1]
# Input: grid = [ [5,9,3], [4,1,6], [7,8,2]], k = 1
# Output: [1]
sub minPath {
    my($grid, $k) = @_;
    my $n = @$grid;
    my $m = @{$grid->[0]};
    my $dp = [];
    for(my $i = 0; $i < $n; ++$i) {
        for(my $j = 0; $j < $m; ++$j) {
            $dp->[$i][$j] = [$grid->[$i][$j], $i, $j];
        }
    }
    for(my $i = 0; $i < $n; ++$i) {
        for(my $j = 0; $j < $m; ++$j) {
            if($i > 0) {
                $dp->[$i][$j][0] = $dp->[$i-1][$j][0] + $grid->[$i][$j];
            }
            if($j > 0) {
                $dp->[$i][$j][0] = $dp->[$i][$j-1][0] + $grid->[$i][$j];
            }
        }
    }
    my $ans = [];
    my $min = $n * $m;
    for(my $i = 0; $i < $n; ++$i) {
        for(my $j = 0; $j < $m; ++$j) {
            my $cur = $dp->[$i][$j][0];
            if($cur <= $min) {
                $min = $cur;
                $ans = [$dp->[$i][$j][1], $dp->[$i][$j][2]];
            }
        }
    }
    my $l = @$ans;
    my $i = 0;
    my $j = 0;
    my $cnt = 0;
    while($cnt < $k) {
        if($i > 0 && $j > 0) {
            if($dp->[$i-1][$j][0] < $dp->[$i][$j-1][0]) {
                $i--;
           

use Data::Compare;


sub testhumaneval {
    my $candidate = \&minPath;
    my @arg0 = (1, 2, 3);
    my @arg1 = (4, 5, 6);
    my @arg2 = (7, 8, 9);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (1, 2, 1);
    if(Compare($candidate->(\@arg3, 3),\@arg4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (4, 5, 6);
    my @arg2 = (7, 8, 9);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (1, 2, 1);
    my @arg5 = (5, 9, 3);
    my @arg6 = (4, 1, 6);
    my @arg7 = (7, 8, 2);
    my @arg8 = (\@arg5, \@arg6, \@arg7);
    my @arg9 = (1);
    if(Compare($candidate->(\@arg8, 1),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (4, 5, 6);
    my @arg2 = (7, 8, 9);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (1, 2, 1);
    my @arg5 = (5, 9, 3);
    my @arg6 = (4, 1, 6);
    my @arg7 = (7, 8, 2);
    my @arg8 = (\@arg5, \@arg6, \@arg7);
    my @arg9 = (1);
    my @arg10 = (1, 2, 3, 4);
    my @arg11 = (5, 6, 7, 8);
    my @arg12 = (9, 10, 11, 12);
    my @arg13 = (13, 14, 15, 16);
    my @arg14 = (\@arg10, \@arg11, \@arg12, \@arg13);
    my @arg15 = (1, 2, 1, 2);
    if(Compare($candidate->(\@arg14, 4),\@arg15)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (4, 5, 6);
    my @arg2 = (7, 8, 9);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (1, 2, 1);
    my @arg5 = (5, 9, 3);
    my @arg6 = (4, 1, 6);
    my @arg7 = (7, 8, 2);
    my @arg8 = (\@arg5, \@arg6, \@arg7);
    my @arg9 = (1);
    my @arg10 = (1, 2, 3, 4);
    my @arg11 = (5, 6, 7, 8);
    my @arg12 = (9, 10, 11, 12);
    my @arg13 = (13, 14, 15, 16);
    my @arg14 = (\@arg10, \@arg11, \@arg12, \@arg13);
    my @arg15 = (1, 2, 1, 2);
    my @arg16 = (6, 4, 13, 10);
    my @arg17 = (5, 7, 12, 1);
    my @arg18 = (3, 16, 11, 15);
    my @arg19 = (8, 14, 9, 2);
    my @arg20 = (\@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = (1, 10, 1, 10, 1, 10, 1);
    if(Compare($candidate->(\@arg20, 7),\@arg21)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (4, 5, 6);
    my @arg2 = (7, 8, 9);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (1, 2, 1);
    my @arg5 = (5, 9, 3);
    my @arg6 = (4, 1, 6);
    my @arg7 = (7, 8, 2);
    my @arg8 = (\@arg5, \@arg6, \@arg7);
    my @arg9 = (1);
    my @arg10 = (1, 2, 3, 4);
    my @arg11 = (5, 6, 7, 8);
    my @arg12 = (9, 10, 11, 12);
    my @arg13 = (13, 14, 15, 16);
    my @arg14 = (\@arg10, \@arg11, \@arg12, \@arg13);
    my @arg15 = (1, 2, 1, 2);
    my @arg16 = (6, 4, 13, 10);
    my @arg17 = (5, 7, 12, 1);
    my @arg18 = (3, 16, 11, 15);
    my @arg19 = (8, 14, 9, 2);
    my @arg20 = (\@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = (1, 10, 1, 10, 1, 10, 1);
    my @arg22 = (8, 14, 9, 2);
    my @arg23 = (6, 4, 13, 15);
    my @arg24 = (5, 7, 1, 12);
    my @arg25 = (3, 10, 11, 16);
    my @arg26 = (\@arg22, \@arg23, \@arg24, \@arg25);
    my @arg27 = (1, 7, 1, 7, 1);
    if(Compare($candidate->(\@arg26, 5),\@arg27)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (4, 5, 6);
    my @arg2 = (7, 8, 9);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (1, 2, 1);
    my @arg5 = (5, 9, 3);
    my @arg6 = (4, 1, 6);
    my @arg7 = (7, 8, 2);
    my @arg8 = (\@arg5, \@arg6, \@arg7);
    my @arg9 = (1);
    my @arg10 = (1, 2, 3, 4);
    my @arg11 = (5, 6, 7, 8);
    my @arg12 = (9, 10, 11, 12);
    my @arg13 = (13, 14, 15, 16);
    my @arg14 = (\@arg10, \@arg11, \@arg12, \@arg13);
    my @arg15 = (1, 2, 1, 2);
    my @arg16 = (6, 4, 13, 10);
    my @arg17 = (5, 7, 12, 1);
    my @arg18 = (3, 16, 11, 15);
    my @arg19 = (8, 14, 9, 2);
    my @arg20 = (\@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = (1, 10, 1, 10, 1, 10, 1);
    my @arg22 = (8, 14, 9, 2);
    my @arg23 = (6, 4, 13, 15);
    my @arg24 = (5, 7, 1, 12);
    my @arg25 = (3, 10, 11, 16);
    my @arg26 = (\@arg22, \@arg23, \@arg24, \@arg25);
    my @arg27 = (1, 7, 1, 7, 1);
    my @arg28 = (11, 8, 7, 2);
    my @arg29 = (5, 16, 14, 4);
    my @arg30 = (9, 3, 15, 6);
    my @arg31 = (12, 13, 10, 1);
    my @arg32 = (\@arg28, \@arg29, \@arg30, \@arg31);
    my @arg33 = (1, 6, 1, 6, 1, 6, 1, 6, 1);
    if(Compare($candidate->(\@arg32, 9),\@arg33)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (4, 5, 6);
    my @arg2 = (7, 8, 9);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (1, 2, 1);
    my @arg5 = (5, 9, 3);
    my @arg6 = (4, 1, 6);
    my @arg7 = (7, 8, 2);
    my @arg8 = (\@arg5, \@arg6, \@arg7);
    my @arg9 = (1);
    my @arg10 = (1, 2, 3, 4);
    my @arg11 = (5, 6, 7, 8);
    my @arg12 = (9, 10, 11, 12);
    my @arg13 = (13, 14, 15, 16);
    my @arg14 = (\@arg10, \@arg11, \@arg12, \@arg13);
    my @arg15 = (1, 2, 1, 2);
    my @arg16 = (6, 4, 13, 10);
    my @arg17 = (5, 7, 12, 1);
    my @arg18 = (3, 16, 11, 15);
    my @arg19 = (8, 14, 9, 2);
    my @arg20 = (\@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = (1, 10, 1, 10, 1, 10, 1);
    my @arg22 = (8, 14, 9, 2);
    my @arg23 = (6, 4, 13, 15);
    my @arg24 = (5, 7, 1, 12);
    my @arg25 = (3, 10, 11, 16);
    my @arg26 = (\@arg22, \@arg23, \@arg24, \@arg25);
    my @arg27 = (1, 7, 1, 7, 1);
    my @arg28 = (11, 8, 7, 2);
    my @arg29 = (5, 16, 14, 4);
    my @arg30 = (9, 3, 15, 6);
    my @arg31 = (12, 13, 10, 1);
    my @arg32 = (\@arg28, \@arg29, \@arg30, \@arg31);
    my @arg33 = (1, 6, 1, 6, 1, 6, 1, 6, 1);
    my @arg34 = (12, 13, 10, 1);
    my @arg35 = (9, 3, 15, 6);
    my @arg36 = (5, 16, 14, 4);
    my @arg37 = (11, 8, 7, 2);
    my @arg38 = (\@arg34, \@arg35, \@arg36, \@arg37);
    my @arg39 = (1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6);
    if(Compare($candidate->(\@arg38, 12),\@arg39)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (4, 5, 6);
    my @arg2 = (7, 8, 9);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (1, 2, 1);
    my @arg5 = (5, 9, 3);
    my @arg6 = (4, 1, 6);
    my @arg7 = (7, 8, 2);
    my @arg8 = (\@arg5, \@arg6, \@arg7);
    my @arg9 = (1);
    my @arg10 = (1, 2, 3, 4);
    my @arg11 = (5, 6, 7, 8);
    my @arg12 = (9, 10, 11, 12);
    my @arg13 = (13, 14, 15, 16);
    my @arg14 = (\@arg10, \@arg11, \@arg12, \@arg13);
    my @arg15 = (1, 2, 1, 2);
    my @arg16 = (6, 4, 13, 10);
    my @arg17 = (5, 7, 12, 1);
    my @arg18 = (3, 16, 11, 15);
    my @arg19 = (8, 14, 9, 2);
    my @arg20 = (\@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = (1, 10, 1, 10, 1, 10, 1);
    my @arg22 = (8, 14, 9, 2);
    my @arg23 = (6, 4, 13, 15);
    my @arg24 = (5, 7, 1, 12);
    my @arg25 = (3, 10, 11, 16);
    my @arg26 = (\@arg22, \@arg23, \@arg24, \@arg25);
    my @arg27 = (1, 7, 1, 7, 1);
    my @arg28 = (11, 8, 7, 2);
    my @arg29 = (5, 16, 14, 4);
    my @arg30 = (9, 3, 15, 6);
    my @arg31 = (12, 13, 10, 1);
    my @arg32 = (\@arg28, \@arg29, \@arg30, \@arg31);
    my @arg33 = (1, 6, 1, 6, 1, 6, 1, 6, 1);
    my @arg34 = (12, 13, 10, 1);
    my @arg35 = (9, 3, 15, 6);
    my @arg36 = (5, 16, 14, 4);
    my @arg37 = (11, 8, 7, 2);
    my @arg38 = (\@arg34, \@arg35, \@arg36, \@arg37);
    my @arg39 = (1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6);
    my @arg40 = (2, 7, 4);
    my @arg41 = (3, 1, 5);
    my @arg42 = (6, 8, 9);
    my @arg43 = (\@arg40, \@arg41, \@arg42);
    my @arg44 = (1, 3, 1, 3, 1, 3, 1, 3);
    if(Compare($candidate->(\@arg43, 8),\@arg44)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (4, 5, 6);
    my @arg2 = (7, 8, 9);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (1, 2, 1);
    my @arg5 = (5, 9, 3);
    my @arg6 = (4, 1, 6);
    my @arg7 = (7, 8, 2);
    my @arg8 = (\@arg5, \@arg6, \@arg7);
    my @arg9 = (1);
    my @arg10 = (1, 2, 3, 4);
    my @arg11 = (5, 6, 7, 8);
    my @arg12 = (9, 10, 11, 12);
    my @arg13 = (13, 14, 15, 16);
    my @arg14 = (\@arg10, \@arg11, \@arg12, \@arg13);
    my @arg15 = (1, 2, 1, 2);
    my @arg16 = (6, 4, 13, 10);
    my @arg17 = (5, 7, 12, 1);
    my @arg18 = (3, 16, 11, 15);
    my @arg19 = (8, 14, 9, 2);
    my @arg20 = (\@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = (1, 10, 1, 10, 1, 10, 1);
    my @arg22 = (8, 14, 9, 2);
    my @arg23 = (6, 4, 13, 15);
    my @arg24 = (5, 7, 1, 12);
    my @arg25 = (3, 10, 11, 16);
    my @arg26 = (\@arg22, \@arg23, \@arg24, \@arg25);
    my @arg27 = (1, 7, 1, 7, 1);
    my @arg28 = (11, 8, 7, 2);
    my @arg29 = (5, 16, 14, 4);
    my @arg30 = (9, 3, 15, 6);
    my @arg31 = (12, 13, 10, 1);
    my @arg32 = (\@arg28, \@arg29, \@arg30, \@arg31);
    my @arg33 = (1, 6, 1, 6, 1, 6, 1, 6, 1);
    my @arg34 = (12, 13, 10, 1);
    my @arg35 = (9, 3, 15, 6);
    my @arg36 = (5, 16, 14, 4);
    my @arg37 = (11, 8, 7, 2);
    my @arg38 = (\@arg34, \@arg35, \@arg36, \@arg37);
    my @arg39 = (1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6);
    my @arg40 = (2, 7, 4);
    my @arg41 = (3, 1, 5);
    my @arg42 = (6, 8, 9);
    my @arg43 = (\@arg40, \@arg41, \@arg42);
    my @arg44 = (1, 3, 1, 3, 1, 3, 1, 3);
    my @arg45 = (6, 1, 5);
    my @arg46 = (3, 8, 9);
    my @arg47 = (2, 7, 4);
    my @arg48 = (\@arg45, \@arg46, \@arg47);
    my @arg49 = (1, 5, 1, 5, 1, 5, 1, 5);
    if(Compare($candidate->(\@arg48, 8),\@arg49)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (4, 5, 6);
    my @arg2 = (7, 8, 9);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (1, 2, 1);
    my @arg5 = (5, 9, 3);
    my @arg6 = (4, 1, 6);
    my @arg7 = (7, 8, 2);
    my @arg8 = (\@arg5, \@arg6, \@arg7);
    my @arg9 = (1);
    my @arg10 = (1, 2, 3, 4);
    my @arg11 = (5, 6, 7, 8);
    my @arg12 = (9, 10, 11, 12);
    my @arg13 = (13, 14, 15, 16);
    my @arg14 = (\@arg10, \@arg11, \@arg12, \@arg13);
    my @arg15 = (1, 2, 1, 2);
    my @arg16 = (6, 4, 13, 10);
    my @arg17 = (5, 7, 12, 1);
    my @arg18 = (3, 16, 11, 15);
    my @arg19 = (8, 14, 9, 2);
    my @arg20 = (\@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = (1, 10, 1, 10, 1, 10, 1);
    my @arg22 = (8, 14, 9, 2);
    my @arg23 = (6, 4, 13, 15);
    my @arg24 = (5, 7, 1, 12);
    my @arg25 = (3, 10, 11, 16);
    my @arg26 = (\@arg22, \@arg23, \@arg24, \@arg25);
    my @arg27 = (1, 7, 1, 7, 1);
    my @arg28 = (11, 8, 7, 2);
    my @arg29 = (5, 16, 14, 4);
    my @arg30 = (9, 3, 15, 6);
    my @arg31 = (12, 13, 10, 1);
    my @arg32 = (\@arg28, \@arg29, \@arg30, \@arg31);
    my @arg33 = (1, 6, 1, 6, 1, 6, 1, 6, 1);
    my @arg34 = (12, 13, 10, 1);
    my @arg35 = (9, 3, 15, 6);
    my @arg36 = (5, 16, 14, 4);
    my @arg37 = (11, 8, 7, 2);
    my @arg38 = (\@arg34, \@arg35, \@arg36, \@arg37);
    my @arg39 = (1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6);
    my @arg40 = (2, 7, 4);
    my @arg41 = (3, 1, 5);
    my @arg42 = (6, 8, 9);
    my @arg43 = (\@arg40, \@arg41, \@arg42);
    my @arg44 = (1, 3, 1, 3, 1, 3, 1, 3);
    my @arg45 = (6, 1, 5);
    my @arg46 = (3, 8, 9);
    my @arg47 = (2, 7, 4);
    my @arg48 = (\@arg45, \@arg46, \@arg47);
    my @arg49 = (1, 5, 1, 5, 1, 5, 1, 5);
    my @arg50 = (1, 2);
    my @arg51 = (3, 4);
    my @arg52 = (\@arg50, \@arg51);
    my @arg53 = (1, 2, 1, 2, 1, 2, 1, 2, 1, 2);
    if(Compare($candidate->(\@arg52, 10),\@arg53)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3);
    my @arg1 = (4, 5, 6);
    my @arg2 = (7, 8, 9);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (1, 2, 1);
    my @arg5 = (5, 9, 3);
    my @arg6 = (4, 1, 6);
    my @arg7 = (7, 8, 2);
    my @arg8 = (\@arg5, \@arg6, \@arg7);
    my @arg9 = (1);
    my @arg10 = (1, 2, 3, 4);
    my @arg11 = (5, 6, 7, 8);
    my @arg12 = (9, 10, 11, 12);
    my @arg13 = (13, 14, 15, 16);
    my @arg14 = (\@arg10, \@arg11, \@arg12, \@arg13);
    my @arg15 = (1, 2, 1, 2);
    my @arg16 = (6, 4, 13, 10);
    my @arg17 = (5, 7, 12, 1);
    my @arg18 = (3, 16, 11, 15);
    my @arg19 = (8, 14, 9, 2);
    my @arg20 = (\@arg16, \@arg17, \@arg18, \@arg19);
    my @arg21 = (1, 10, 1, 10, 1, 10, 1);
    my @arg22 = (8, 14, 9, 2);
    my @arg23 = (6, 4, 13, 15);
    my @arg24 = (5, 7, 1, 12);
    my @arg25 = (3, 10, 11, 16);
    my @arg26 = (\@arg22, \@arg23, \@arg24, \@arg25);
    my @arg27 = (1, 7, 1, 7, 1);
    my @arg28 = (11, 8, 7, 2);
    my @arg29 = (5, 16, 14, 4);
    my @arg30 = (9, 3, 15, 6);
    my @arg31 = (12, 13, 10, 1);
    my @arg32 = (\@arg28, \@arg29, \@arg30, \@arg31);
    my @arg33 = (1, 6, 1, 6, 1, 6, 1, 6, 1);
    my @arg34 = (12, 13, 10, 1);
    my @arg35 = (9, 3, 15, 6);
    my @arg36 = (5, 16, 14, 4);
    my @arg37 = (11, 8, 7, 2);
    my @arg38 = (\@arg34, \@arg35, \@arg36, \@arg37);
    my @arg39 = (1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6);
    my @arg40 = (2, 7, 4);
    my @arg41 = (3, 1, 5);
    my @arg42 = (6, 8, 9);
    my @arg43 = (\@arg40, \@arg41, \@arg42);
    my @arg44 = (1, 3, 1, 3, 1, 3, 1, 3);
    my @arg45 = (6, 1, 5);
    my @arg46 = (3, 8, 9);
    my @arg47 = (2, 7, 4);
    my @arg48 = (\@arg45, \@arg46, \@arg47);
    my @arg49 = (1, 5, 1, 5, 1, 5, 1, 5);
    my @arg50 = (1, 2);
    my @arg51 = (3, 4);
    my @arg52 = (\@arg50, \@arg51);
    my @arg53 = (1, 2, 1, 2, 1, 2, 1, 2, 1, 2);
    my @arg54 = (1, 3);
    my @arg55 = (3, 2);
    my @arg56 = (\@arg54, \@arg55);
    my @arg57 = (1, 3, 1, 3, 1, 3, 1, 3, 1, 3);
    if(Compare($candidate->(\@arg56, 10),\@arg57)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
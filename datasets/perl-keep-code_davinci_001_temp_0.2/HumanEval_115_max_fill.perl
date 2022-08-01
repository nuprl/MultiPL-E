# You are given a rectangular grid of wells. Each row represents a single well,
# and each 1 in a row represents a single unit of water.
# Each well has a corresponding bucket that can be used to extract water from it, 
# and all buckets have the same capacity.
# Your task is to use the buckets to empty the wells.
# Output the number of times you need to lower the buckets.
# Example 1:
# Input: 
# grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
# bucket_capacity : 1
# Output: 6
# Example 2:
# Input: 
# grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
# bucket_capacity : 2
# Output: 5
# Example 3:
# Input: 
# grid : [[0,0,0], [0,0,0]]
# bucket_capacity : 5
# Output: 0
# Constraints:
# * all wells have the same length
# * 1 <= grid.length <= 10^2
# * 1 <= grid[:,1].length <= 10^2
# * grid[i][j] -> 0 | 1
# * 1 <= capacity <= 10
sub max_fill {
    my($grid, $capacity) = @_;
    my $rows = @$grid;
    my $cols = @{$grid->[0]};
    my $max = 0;
    for my $r (0..$rows-1) {
        for my $c (0..$cols-1) {
            my $fill = 0;
            for my $d (0..$capacity-1) {
                my $r1 = $r + $d;
                my $c1 = $c + $d;
                if ($r1 < $rows && $c1 < $cols) {
                    $fill += $grid->[$r1][$c1];
                }
            }
            $max = $fill if $fill > $max;
        }
    }
    return $max;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&max_fill;
    my @arg0 = (0, 0, 1, 0);
    my @arg1 = (0, 1, 0, 0);
    my @arg2 = (1, 1, 1, 1);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    if(Compare($candidate->(\@arg3, 1),6)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (0, 0, 1, 0);
    my @arg1 = (0, 1, 0, 0);
    my @arg2 = (1, 1, 1, 1);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (0, 0, 1, 1);
    my @arg5 = (0, 0, 0, 0);
    my @arg6 = (1, 1, 1, 1);
    my @arg7 = (0, 1, 1, 1);
    my @arg8 = (\@arg4, \@arg5, \@arg6, \@arg7);
    if(Compare($candidate->(\@arg8, 2),5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (0, 0, 1, 0);
    my @arg1 = (0, 1, 0, 0);
    my @arg2 = (1, 1, 1, 1);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (0, 0, 1, 1);
    my @arg5 = (0, 0, 0, 0);
    my @arg6 = (1, 1, 1, 1);
    my @arg7 = (0, 1, 1, 1);
    my @arg8 = (\@arg4, \@arg5, \@arg6, \@arg7);
    my @arg9 = (0, 0, 0);
    my @arg10 = (0, 0, 0);
    my @arg11 = (\@arg9, \@arg10);
    if(Compare($candidate->(\@arg11, 5),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (0, 0, 1, 0);
    my @arg1 = (0, 1, 0, 0);
    my @arg2 = (1, 1, 1, 1);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (0, 0, 1, 1);
    my @arg5 = (0, 0, 0, 0);
    my @arg6 = (1, 1, 1, 1);
    my @arg7 = (0, 1, 1, 1);
    my @arg8 = (\@arg4, \@arg5, \@arg6, \@arg7);
    my @arg9 = (0, 0, 0);
    my @arg10 = (0, 0, 0);
    my @arg11 = (\@arg9, \@arg10);
    my @arg12 = (1, 1, 1, 1);
    my @arg13 = (1, 1, 1, 1);
    my @arg14 = (\@arg12, \@arg13);
    if(Compare($candidate->(\@arg14, 2),4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (0, 0, 1, 0);
    my @arg1 = (0, 1, 0, 0);
    my @arg2 = (1, 1, 1, 1);
    my @arg3 = (\@arg0, \@arg1, \@arg2);
    my @arg4 = (0, 0, 1, 1);
    my @arg5 = (0, 0, 0, 0);
    my @arg6 = (1, 1, 1, 1);
    my @arg7 = (0, 1, 1, 1);
    my @arg8 = (\@arg4, \@arg5, \@arg6, \@arg7);
    my @arg9 = (0, 0, 0);
    my @arg10 = (0, 0, 0);
    my @arg11 = (\@arg9, \@arg10);
    my @arg12 = (1, 1, 1, 1);
    my @arg13 = (1, 1, 1, 1);
    my @arg14 = (\@arg12, \@arg13);
    my @arg15 = (1, 1, 1, 1);
    my @arg16 = (1, 1, 1, 1);
    my @arg17 = (\@arg15, \@arg16);
    if(Compare($candidate->(\@arg17, 9),2)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&strange_sort_list;
        if(eq_deeply($candidate->([1, 2, 3, 4]),[1, 4, 2, 3])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 6, 7, 8, 9]),[5, 9, 6, 8, 7])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4, 5]),[1, 5, 2, 4, 3])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 6, 7, 8, 9, 1]),[1, 9, 5, 8, 6, 7])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 5, 5, 5]),[5, 5, 5, 5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4, 5, 6, 7, 8]),[1, 8, 2, 7, 3, 6, 4, 5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([0, 2, 2, 2, 5, 5, -5, -5]),[-5, 5, -5, 5, 0, 2, 2, 2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([111111]),[111111])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
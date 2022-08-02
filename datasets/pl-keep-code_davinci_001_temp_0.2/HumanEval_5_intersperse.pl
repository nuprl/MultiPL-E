# Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
# >>> intersperse([], 4)
# []
# >>> intersperse([1, 2, 3], 4)
# [1, 4, 2, 4, 3]
sub intersperse {
    my($numbers, $delimeter) = @_;
    my $ret = [];
    for(my $i = 0; $i < @$numbers; $i++) {
        push @$ret, $numbers->[$i];
        if($i < @$numbers - 1) {
            push @$ret, $delimeter;
        }
    }
    return $ret;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&intersperse;
        if(eq_deeply($candidate->([], 7),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 6, 3, 2], 8),[5, 8, 6, 8, 3, 8, 2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 2, 2], 2),[2, 2, 2, 2, 2])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&intersperse;
    my @arg0 = ();
    my @arg1 = ();
    if(Compare($candidate->(\@arg0, 7),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (5, 6, 3, 2);
    my @arg3 = (5, 8, 6, 8, 3, 8, 2);
    if(Compare($candidate->(\@arg2, 8),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (5, 6, 3, 2);
    my @arg3 = (5, 8, 6, 8, 3, 8, 2);
    my @arg4 = (2, 2, 2);
    my @arg5 = (2, 2, 2, 2, 2);
    if(Compare($candidate->(\@arg4, 2),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
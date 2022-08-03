# Return maximum element in the list.
# >>> max_element([1, 2, 3])
# 3
# >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
# 123
sub max_element {
    my($l) = @_;
    my $max = $l->[0];
    for (@$l) {
        $max = $_ if $max < $_;
    }
    return $max;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&max_element;
        if(eq_deeply($candidate->([1, 2, 3]),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10]),124)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Circular shift the digits of the integer x, shift the digits right by shift
# and return the result as a string.
# If shift > number of digits, return digits reversed.
# >>> circular_shift(12, 1)
# "21"
# >>> circular_shift(12, 2)
# "12"
sub circular_shift {
    my($x, $shift) = @_;
    my $digits = length($x);
    my $result = $x;
    if ($shift > $digits) {
        $result = reverse($x);
    } else {
        $result = substr($x, $digits - $shift) . substr($x, 0, $digits - $shift);
    }
    return $result;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&circular_shift;
        if(eq_deeply($candidate->(100, 2),"001")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(12, 2),"12")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(97, 8),"79")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(12, 1),"21")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(11, 101),"11")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
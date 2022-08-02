# Complete the function that takes two integers and returns 
# the product of their unit digits.
# Assume the input is always valid.
# Examples:
# multiply(148, 412) should return 16.
# multiply(19, 28) should return 72.
# multiply(2020, 1851) should return 0.
# multiply(14,-15) should return 20.
sub multiply {
    my($a, $b) = @_;
    my $result = 0;
    my $sign = 1;
    if($a < 0){
        $a = -$a;
        $sign = -$sign;
    }
    if($b < 0){
        $b = -$b;
        $sign = -$sign;
    }
    while($a > 0){
        my $digit = $a % 10;
        $result += $digit * $b;
        $a = int($a / 10);
    }
    return $sign * $result;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&multiply;
        if(eq_deeply($candidate->(148, 412),16)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(19, 28),72)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(2020, 1851),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(14, -15),20)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(76, 67),42)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(17, 27),49)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(0, 1),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(0, 0),0)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
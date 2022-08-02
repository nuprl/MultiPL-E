# Return a greatest common divisor of two integers a and b
# >>> greatest_common_divisor(3, 5)
# 1
# >>> greatest_common_divisor(25, 15)
# 5
sub greatest_common_divisor {
    my($a, $b) = @_;
    while ($b) {
        ($a, $b) = ($b, $a % $b);
    }
    return $a;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&greatest_common_divisor;
        if(eq_deeply($candidate->(3, 7),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10, 15),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(49, 14),7)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(144, 60),12)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
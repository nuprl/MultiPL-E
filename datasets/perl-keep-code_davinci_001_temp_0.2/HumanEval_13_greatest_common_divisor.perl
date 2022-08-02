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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&greatest_common_divisor;
        if(Compare($candidate->(3, 7),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(10, 15),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(49, 14),7)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(144, 60),12)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Return 2^n modulo p (be aware of numerics).
# >>> modp(3, 5)
# 3
# >>> modp(1101, 101)
# 2
# >>> modp(0, 101)
# 1
# >>> modp(3, 11)
# 8
# >>> modp(100, 101)
# 1
sub modp {
    my($n, $p) = @_;
    return $n % $p;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&modp;
        if(Compare($candidate->(3, 5),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(1101, 101),2)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(0, 101),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(3, 11),8)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(100, 101),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(30, 5),4)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(31, 5),3)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
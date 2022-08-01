# Your task is to write a function that returns true if a number x is a simple
# power of n and false in other cases.
# x is a simple power of n if n**int=x
# For example:
# is_simple_power(1, 4) => true
# is_simple_power(2, 2) => true
# is_simple_power(8, 2) => true
# is_simple_power(3, 2) => false
# is_simple_power(3, 1) => false
# is_simple_power(5, 3) => false
sub is_simple_power {
    my($x, $n) = @_;
    return $x == $n if $x == 1;
    return $x == $n if $x == $n**int($x/$n);
    return 0;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&is_simple_power;
        if(Compare($candidate->(16, 2),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(143214, 16),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(4, 2),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(9, 3),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(16, 4),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(24, 2),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(128, 4),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(12, 6),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(1, 1),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(1, 12),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
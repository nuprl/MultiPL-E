# Create a function that takes integers, floats, or strings representing
# real numbers, and returns the larger variable in its given variable type.
# Return None if the values are equal.
# Note: If a real number is represented as a string, the floating point might be . or ,
# compare_one(1, 2.5) ➞ 2.5
# compare_one(1, "2,3") ➞ "2,3"
# compare_one("5,1", "6") ➞ "6"
# compare_one("1", 1) ➞ None
sub compare_one {
    my($a, $b) = @_;
    my $type_a = ref $a;
    my $type_b = ref $b;
    if ($type_a eq $type_b) {
        return $a if $a > $b;
        return $b if $b > $a;
        return;
    }
    my $cmp = $type_a cmp $type_b;
    return $a if $cmp < 0;
    return $b if $cmp > 0;
    return;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&compare_one;
        if(Compare($candidate->(1, 2),2)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(1, 2.5),2.5)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(2, 3),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(5, 6),6)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(1, "2,3"),"2,3")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("5,1", "6"),"6")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("1", "2"),"2")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("1", 1),#f)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
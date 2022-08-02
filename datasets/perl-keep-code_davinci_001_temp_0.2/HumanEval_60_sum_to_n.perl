# sum_to_n is a function that sums numbers from 1 to n.
# >>> sum_to_n(30)
# 465
# >>> sum_to_n(100)
# 5050
# >>> sum_to_n(5)
# 15
# >>> sum_to_n(10)
# 55
# >>> sum_to_n(1)
# 1
sub sum_to_n {
    my($n) = @_;
    my $sum = 0;
    for (my $i = 1; $i <= $n; $i++) {
        $sum += $i;
    }
    return $sum;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&sum_to_n;
        if(Compare($candidate->(1),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(6),21)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(11),66)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(30),465)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(100),5050)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
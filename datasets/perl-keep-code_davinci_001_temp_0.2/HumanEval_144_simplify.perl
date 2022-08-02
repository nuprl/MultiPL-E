# Your task is to implement a function that will simplify the expression
# x * n. The function returns True if x * n evaluates to a whole number and False
# otherwise. Both x and n, are string representation of a fraction, and have the following format,
# <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
# You can assume that x, and n are valid fractions, and do not have zero as denominator.
# simplify("1/5", "5/1") = True
# simplify("1/6", "2/1") = False
# simplify("7/10", "10/2") = False
sub simplify {
    my($x, $n) = @_;
    my($xNumerator, $xDenominator) = split(/\//, $x);
    my($nNumerator, $nDenominator) = split(/\//, $n);
    my($xNumeratorMult, $xDenominatorMult) = ($xNumerator * $nDenominator, $xDenominator * $nNumerator);
    my($xNumeratorMultDiv, $xDenominatorMultDiv) = ($xNumeratorMult / $xDenominator, $xDenominatorMult / $xNumerator);
    return $xNumeratorMultDiv == $xDenominatorMultDiv ? 1 : 0;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&simplify;
        if(eq_deeply($candidate->("1/5", "5/1"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("1/6", "2/1"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("5/1", "3/1"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("7/10", "10/2"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("2/10", "50/10"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("7/2", "4/2"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("11/6", "6/1"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("2/3", "5/2"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("5/2", "3/5"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("2/4", "8/4"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("2/4", "4/2"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("1/5", "5/1"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("1/5", "1/5"),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
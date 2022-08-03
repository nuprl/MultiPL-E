# You are given an array arr of integers and you need to return
# sum of magnitudes of integers multiplied by product of all signs
# of each number in the array, represented by 1, -1 or 0.
# Note: return None for empty arr.
# Example:
# >>> prod_signs([1, 2, 2, -4]) == -9
# >>> prod_signs([0, 1]) == 0
# >>> prod_signs([]) == None
sub prod_signs {
    my($arr) = @_;
    my $sum = 0;
    my $prod = 1;
    foreach my $a (@$arr) {
        $sum += abs($a);
        $prod *= $a > 0 ? 1 : $a < 0 ? -1 : 0;
    }
    return $sum * $prod;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&prod_signs;
        if(eq_deeply($candidate->([1, 2, 2, -4]),-9)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([0, 1]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 1, 1, 2, 3, -1, 1]),-10)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([]),undef)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 4, 1, 2, -1, -1, 9]),20)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-1, 1, -1, 1]),4)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-1, 1, 1, 1]),-4)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-1, 1, 1, 0]),0)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
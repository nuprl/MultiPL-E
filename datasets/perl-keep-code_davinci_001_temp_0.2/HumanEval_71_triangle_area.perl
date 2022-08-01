# Given the lengths of the three sides of a triangle. Return the area of
# the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
# Otherwise return -1
# Three sides make a valid triangle when the sum of any two sides is greater 
# than the third side.
# Example:
# triangle_area(3, 4, 5) == 6.00
# triangle_area(1, 2, 10) == -1
sub triangle_area {
    my($a, $b, $c) = @_;
    if ($a + $b > $c && $a + $c > $b && $b + $c > $a) {
        return sprintf("%.2f", ($a + $b + $c) / 2);
    } else {
        return -1;
    }
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&triangle_area;
        if(Compare($candidate->(3, 4, 5),6.0)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(1, 2, 10),-1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(4, 8, 5),8.18)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(2, 2, 2),1.73)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(1, 2, 3),-1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(10, 5, 7),16.25)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(2, 6, 3),-1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(1, 1, 1),0.43)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(2, 2, 10),-1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Given the lengths of the three sides of a triangle. Return True if the three
# sides form a right-angled triangle, False otherwise.
# A right-angled triangle is a triangle in which one angle is right angle or 
# 90 degree.
# Example:
# right_angle_triangle(3, 4, 5) == True
# right_angle_triangle(1, 2, 3) == False
sub right_angle_triangle {
    my($a, $b, $c) = @_;
    return $a**2 + $b**2 == $c**2;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&right_angle_triangle;
        if(eq_deeply($candidate->(3, 4, 5),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1, 2, 3),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10, 6, 8),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(2, 2, 2),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7, 24, 25),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10, 5, 7),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5, 12, 13),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(15, 8, 17),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(48, 55, 73),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1, 1, 1),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(2, 2, 10),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
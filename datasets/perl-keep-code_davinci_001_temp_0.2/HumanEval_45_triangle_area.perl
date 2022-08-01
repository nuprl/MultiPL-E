# Given length of a side and high return area for a triangle.
# >>> triangle_area(5, 3)
# 7.5
sub triangle_area {
    my($a, $h) = @_;
    return $a * $h / 2;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&triangle_area;
        if(Compare($candidate->(5, 3),7.5)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(2, 2),2.0)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(10, 8),40.0)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
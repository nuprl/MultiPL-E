# Add two numbers x and y
# >>> add(2, 3)
# 5
# >>> add(5, 7)
# 12
sub add {
    my($x, $y) = @_;
    return $x + $y;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&add;
        if(Compare($candidate->(0, 1),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(1, 0),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(2, 3),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(5, 7),12)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(7, 5),12)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
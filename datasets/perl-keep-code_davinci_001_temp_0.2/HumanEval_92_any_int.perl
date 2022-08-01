# Create a function that takes 3 numbers.
# Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
# Returns false in any other cases.
# Examples
# any_int(5, 2, 7) ➞ True
# any_int(3, 2, 2) ➞ False
# any_int(3, -2, 1) ➞ True
# any_int(3.6, -2.2, 2) ➞ False
sub any_int {
    my($x, $y, $z) = @_;
    return $x + $y == $z || $x + $z == $y || $y + $z == $x;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&any_int;
        if(Compare($candidate->(2, 3, 1),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(2.5, 2, 3),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(1.5, 5, 3.5),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(2, 6, 2),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(4, 2, 2),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(2.2, 2.2, 2.2),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(-4, 6, 2),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(2, 1, 1),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(3, 4, 7),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(3.0, 4, 7),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
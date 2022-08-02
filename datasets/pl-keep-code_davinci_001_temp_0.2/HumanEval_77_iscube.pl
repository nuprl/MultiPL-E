# Write a function that takes an integer a and returns True 
# if this ingeger is a cube of some integer number.
# Note: you may assume the input is always valid.
# Examples:
# iscube(1) ==> True
# iscube(2) ==> False
# iscube(-1) ==> True
# iscube(64) ==> True
# iscube(0) ==> True
# iscube(180) ==> False
sub iscube {
    my($a) = @_;
    return $a == int($a**(1/3))**3;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&iscube;
        if(eq_deeply($candidate->(1),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(2),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(-1),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(64),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(180),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1000),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(0),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1729),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
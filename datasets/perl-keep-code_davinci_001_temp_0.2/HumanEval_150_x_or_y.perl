# A simple program which should return the value of x if n is 
# a prime number and should return the value of y otherwise.
# Examples:
# for x_or_y(7, 34, 12) == 34
# for x_or_y(15, 8, 5) == 5
sub x_or_y {
    my($n, $x, $y) = @_;
    if (is_prime($n)) {
        return $x;
    } else {
        return $y;
    }
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&x_or_y;
        if(eq_deeply($candidate->(7, 34, 12),34)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(15, 8, 5),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(3, 33, 5212),33)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1259, 3, 52),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7919, -1, 12),-1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(3609, 1245, 583),583)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(91, 56, 129),129)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(6, 34, 1234),1234)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1, 2, 0),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(2, 2, 0),2)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
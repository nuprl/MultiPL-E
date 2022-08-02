# You are given two positive integers n and m, and your task is to compute the
# average of the integers from n through m (including n and m). 
# Round the answer to the nearest integer and convert that to binary.
# If n is greater than m, return -1.
# Example:
# rounded_avg(1, 5) => "0b11"
# rounded_avg(7, 5) => -1
# rounded_avg(10, 20) => "0b1111"
# rounded_avg(20, 33) => "0b11010"
sub rounded_avg {
    my($n, $m) = @_;
    my $avg = ($n + $m) / 2;
    my $r = int($avg);
    return -1 if $n > $m;
    return sprintf("0b%b", $r);
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&rounded_avg;
        if(eq_deeply($candidate->(1, 5),"0b11")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7, 13),"0b1010")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(964, 977),"0b1111001010")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(996, 997),"0b1111100100")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(560, 851),"0b1011000010")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(185, 546),"0b101101110")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(362, 496),"0b110101101")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(350, 902),"0b1001110010")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(197, 233),"0b11010111")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7, 5),-1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5, 1),-1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5, 5),"0b101")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
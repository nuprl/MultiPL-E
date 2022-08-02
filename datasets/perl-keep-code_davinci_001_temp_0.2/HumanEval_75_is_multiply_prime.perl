# Write a function that returns true if the given number is the multiplication of 3 prime numbers
# and false otherwise.
# Knowing that (a) is less then 100. 
# Example:
# is_multiply_prime(30) == True
# 30 = 2 * 3 * 5
sub is_multiply_prime {
    my($a) = @_;
    my $i = 2;
    my $j = 2;
    my $k = 2;
    my $flag = 0;
    while ($i < $a) {
        if ($a % $i == 0) {
            $flag = 1;
            last;
        }
        $i++;
    }
    if ($flag == 0) {
        while ($j < $a) {
            if ($a % $j == 0) {
                $flag = 1;
                last;
            }
            $j++;
        }
    }
    if ($flag == 0) {
        while ($k < $a) {
            if ($a % $k == 0) {
                $flag = 1;
                last;
            }
            $k++;
        }
    }
    if ($flag == 0) {
        return 1;
    }
    else {
        return 0;
    }
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&is_multiply_prime;
        if(eq_deeply($candidate->(5),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(30),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(8),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(125),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(105),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(126),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(729),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(891),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1001),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
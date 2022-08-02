# Return list of prime factors of given integer in the order from smallest to largest.
# Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
# Input number should be equal to the product of all factors
# >>> factorize(8)
# [2, 2, 2]
# >>> factorize(25)
# [5, 5]
# >>> factorize(70)
# [2, 5, 7]
sub factorize {
    my($n) = @_;
    my @factors = ();
    my $i = 2;
    while ($n > 1) {
        while ($n % $i == 0) {
            push @factors, $i;
            $n /= $i;
        }
        $i++;
    }
    return @factors;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&factorize;
        if(eq_deeply($candidate->(2),[2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(4),[2, 2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(8),[2, 2, 2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(57),[3, 19])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(3249),[3, 3, 19, 19])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(185193),[3, 3, 3, 19, 19, 19])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(20577),[3, 19, 19, 19])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(18),[2, 3, 3])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
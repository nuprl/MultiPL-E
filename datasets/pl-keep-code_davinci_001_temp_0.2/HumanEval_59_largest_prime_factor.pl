# Return the largest prime factor of n. Assume n > 1 and is not a prime.
# >>> largest_prime_factor(13195)
# 29
# >>> largest_prime_factor(2048)
# 2
sub largest_prime_factor {
    my($n) = @_;
    my $i = 2;
    while ($i < $n) {
        if ($n % $i == 0) {
            $n /= $i;
        } else {
            $i++;
        }
    }
    return $n;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&largest_prime_factor;
        if(eq_deeply($candidate->(15),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(27),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(63),7)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(330),11)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(13195),29)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
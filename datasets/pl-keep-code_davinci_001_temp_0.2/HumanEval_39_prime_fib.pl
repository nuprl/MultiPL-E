# prime_fib returns n-th number that is a Fibonacci number and it's also prime.
# >>> prime_fib(1)
# 2
# >>> prime_fib(2)
# 3
# >>> prime_fib(3)
# 5
# >>> prime_fib(4)
# 13
# >>> prime_fib(5)
# 89
sub prime_fib {
    my($n) = @_;
    my($i, $j, $k, $l);
    $i = 2;
    while ($i < $n) {
        $j = $i;
        $k = 0;
        while ($j > 0) {
            $k += fib($j);
            $j--;
        }
        $l = is_prime($k);
        if ($l == 1) {
            return $k;
        }
        $i++;
    }
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&prime_fib;
        if(eq_deeply($candidate->(1),2)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(2),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(3),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(4),13)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5),89)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(6),233)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7),1597)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(8),28657)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(9),514229)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10),433494437)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
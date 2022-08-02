# Return n-th Fibonacci number.
# >>> fib(10)
# 55
# >>> fib(1)
# 1
# >>> fib(8)
# 21
sub fib {
    my($n) = @_;
    if ($n < 2) {
        return $n;
    }
    return fib($n-1) + fib($n-2);
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&fib;
        if(eq_deeply($candidate->(10),55)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(8),21)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(11),89)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(12),144)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
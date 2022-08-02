# The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
# fib4(0) -> 0
# fib4(1) -> 0
# fib4(2) -> 2
# fib4(3) -> 0
# fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
# Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
# >>> fib4(5)
# 4
# >>> fib4(6)
# 8
# >>> fib4(7)
# 14
sub fib4 {
    my($n) = @_;
    return 0 if $n == 0;
    return 0 if $n == 1;
    return 2 if $n == 2;
    return 0 if $n == 3;
    return fib4($n-1) + fib4($n-2) + fib4($n-3) + fib4($n-4);
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&fib4;
        if(eq_deeply($candidate->(5),4)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(8),28)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10),104)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(12),386)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
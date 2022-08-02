# The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
# fibfib(0) == 0
# fibfib(1) == 0
# fibfib(2) == 1
# fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
# Please write a function to efficiently compute the n-th element of the fibfib number sequence.
# >>> fibfib(1)
# 0
# >>> fibfib(5)
# 4
# >>> fibfib(8)
# 24
sub fibfib {
    my($n) = @_;
    return 0 if $n == 0;
    return 0 if $n == 1;
    return 1 if $n == 2;
    return fibfib($n-1) + fibfib($n-2) + fibfib($n-3);
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&fibfib;
        if(eq_deeply($candidate->(2),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5),4)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(8),24)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10),81)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(12),274)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(14),927)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
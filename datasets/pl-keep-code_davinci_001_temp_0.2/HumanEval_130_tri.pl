# Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
# the last couple centuries. However, what people don't know is Tribonacci sequence.
# Tribonacci sequence is defined by the recurrence:
# tri(1) = 3
# tri(n) = 1 + n / 2, if n is even.
# tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
# For example:
# tri(2) = 1 + (2 / 2) = 2
# tri(4) = 3
# tri(3) = tri(2) + tri(1) + tri(4)
# = 2 + 3 + 3 = 8 
# You are given a non-negative integer number n, you have to a return a list of the 
# first n + 1 numbers of the Tribonacci sequence.
# Examples:
# tri(3) = [1, 3, 2, 8]
sub tri {
    my($n) = @_;
    my @tri;
    for (my $i = 0; $i <= $n; $i++) {
        if ($i == 0) {
            push @tri, 3;
        } elsif ($i == 1) {
            push @tri, 1;
        } elsif ($i == 2) {
            push @tri, 2;
        } else {
            if ($i % 2 == 0) {
                push @tri, 1 + int($i / 2);
            } else {
                push @tri, $tri[$i - 3] + $tri[$i - 2] + $tri[$i - 1];
            }
        }
    }
    return @tri;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&tri;
        if(eq_deeply($candidate->(3),[1, 3, 2, 8])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(4),[1, 3, 2, 8, 3])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5),[1, 3, 2, 8, 3, 15])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(6),[1, 3, 2, 8, 3, 15, 4])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7),[1, 3, 2, 8, 3, 15, 4, 24])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(8),[1, 3, 2, 8, 3, 15, 4, 24, 5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(9),[1, 3, 2, 8, 3, 15, 4, 24, 5, 35])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(20),[1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(0),[1])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1),[1, 3])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
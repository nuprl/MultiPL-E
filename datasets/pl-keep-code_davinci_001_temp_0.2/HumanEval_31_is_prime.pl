# Return true if a given number is prime, and false otherwise.
# >>> is_prime(6)
# False
# >>> is_prime(101)
# True
# >>> is_prime(11)
# True
# >>> is_prime(13441)
# True
# >>> is_prime(61)
# True
# >>> is_prime(4)
# False
# >>> is_prime(1)
# False
sub is_prime {
    my($n) = @_;
    if ($n < 2) { return 0; }
    if ($n == 2) { return 1; }
    if ($n % 2 == 0) { return 0; }
    my $limit = sqrt($n);
    for my $i (3 .. $limit) {
        if ($n % $i == 0) { return 0; }
    }
    return 1;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&is_prime;
        if(eq_deeply($candidate->(6),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(101),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(11),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(13441),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(61),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(4),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(11),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(17),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(85),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(77),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(255379),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
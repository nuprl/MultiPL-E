# Given two positive integers a and b, return the even digits between a
# and b, in ascending order.
# For example:
# generate_integers(2, 8) => [2, 4, 6, 8]
# generate_integers(8, 2) => [2, 4, 6, 8]
# generate_integers(10, 14) => []
sub generate_integers {
    my($a, $b) = @_;
    my @result;
    for (my $i = $a; $i <= $b; $i++) {
        if ($i % 2 == 0) {
            push @result, $i;
        }
    }
    return @result;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&generate_integers;
        if(eq_deeply($candidate->(2, 10),[2, 4, 6, 8])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10, 2),[2, 4, 6, 8])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(132, 2),[2, 4, 6, 8])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(17, 89),[])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
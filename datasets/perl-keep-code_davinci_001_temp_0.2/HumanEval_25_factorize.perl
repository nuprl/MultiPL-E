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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&factorize;
    my @arg0 = (2);
    if(Compare($candidate->(2),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2);
    my @arg1 = (2, 2);
    if(Compare($candidate->(4),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2);
    my @arg1 = (2, 2);
    my @arg2 = (2, 2, 2);
    if(Compare($candidate->(8),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2);
    my @arg1 = (2, 2);
    my @arg2 = (2, 2, 2);
    my @arg3 = (3, 19);
    if(Compare($candidate->(57),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2);
    my @arg1 = (2, 2);
    my @arg2 = (2, 2, 2);
    my @arg3 = (3, 19);
    my @arg4 = (3, 3, 19, 19);
    if(Compare($candidate->(3249),\@arg4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2);
    my @arg1 = (2, 2);
    my @arg2 = (2, 2, 2);
    my @arg3 = (3, 19);
    my @arg4 = (3, 3, 19, 19);
    my @arg5 = (3, 3, 3, 19, 19, 19);
    if(Compare($candidate->(185193),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2);
    my @arg1 = (2, 2);
    my @arg2 = (2, 2, 2);
    my @arg3 = (3, 19);
    my @arg4 = (3, 3, 19, 19);
    my @arg5 = (3, 3, 3, 19, 19, 19);
    my @arg6 = (3, 19, 19, 19);
    if(Compare($candidate->(20577),\@arg6)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2);
    my @arg1 = (2, 2);
    my @arg2 = (2, 2, 2);
    my @arg3 = (3, 19);
    my @arg4 = (3, 3, 19, 19);
    my @arg5 = (3, 3, 3, 19, 19, 19);
    my @arg6 = (3, 19, 19, 19);
    my @arg7 = (2, 3, 3);
    if(Compare($candidate->(18),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
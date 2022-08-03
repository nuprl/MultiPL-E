# xs represent coefficients of a polynomial.
# xs[0] + xs[1] * x + xs[2] * x^2 + ....
# Return derivative of this polynomial in the same form.
# >>> derivative([3, 1, 2, 4, 5])
# [1, 4, 12, 20]
# >>> derivative([1, 2, 3])
# [2, 6]
sub derivative {
    my($xs) = @_;
    my $n = @$xs;
    my $ys = [];
    for my $i (1..$n-1) {
        push @$ys, $i * $xs->[$i];
    }
    return $ys;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&derivative;
        if(eq_deeply($candidate->([3, 1, 2, 4, 5]),[1, 4, 12, 20])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3]),[2, 6])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 2, 1]),[2, 2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 2, 1, 0, 4]),[2, 2, 0, 16])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1]),[])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
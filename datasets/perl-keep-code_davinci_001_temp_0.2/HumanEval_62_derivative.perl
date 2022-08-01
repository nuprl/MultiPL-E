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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&derivative;
    my @arg0 = (3, 1, 2, 4, 5);
    my @arg1 = (1, 4, 12, 20);
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 1, 2, 4, 5);
    my @arg1 = (1, 4, 12, 20);
    my @arg2 = (1, 2, 3);
    my @arg3 = (2, 6);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 1, 2, 4, 5);
    my @arg1 = (1, 4, 12, 20);
    my @arg2 = (1, 2, 3);
    my @arg3 = (2, 6);
    my @arg4 = (3, 2, 1);
    my @arg5 = (2, 2);
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 1, 2, 4, 5);
    my @arg1 = (1, 4, 12, 20);
    my @arg2 = (1, 2, 3);
    my @arg3 = (2, 6);
    my @arg4 = (3, 2, 1);
    my @arg5 = (2, 2);
    my @arg6 = (3, 2, 1, 0, 4);
    my @arg7 = (2, 2, 0, 16);
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 1, 2, 4, 5);
    my @arg1 = (1, 4, 12, 20);
    my @arg2 = (1, 2, 3);
    my @arg3 = (2, 6);
    my @arg4 = (3, 2, 1);
    my @arg5 = (2, 2);
    my @arg6 = (3, 2, 1, 0, 4);
    my @arg7 = (2, 2, 0, 16);
    my @arg8 = (1);
    my @arg9 = ();
    if(Compare($candidate->(\@arg8),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&generate_integers;
    my @arg0 = (2, 4, 6, 8);
    if(Compare($candidate->(2, 10),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 6, 8);
    my @arg1 = (2, 4, 6, 8);
    if(Compare($candidate->(10, 2),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 6, 8);
    my @arg1 = (2, 4, 6, 8);
    my @arg2 = (2, 4, 6, 8);
    if(Compare($candidate->(132, 2),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 4, 6, 8);
    my @arg1 = (2, 4, 6, 8);
    my @arg2 = (2, 4, 6, 8);
    my @arg3 = ();
    if(Compare($candidate->(17, 89),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
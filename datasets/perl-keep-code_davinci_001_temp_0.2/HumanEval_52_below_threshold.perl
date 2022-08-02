# Return True if all numbers in the list l are below threshold t.
# >>> below_threshold([1, 2, 4, 10], 100)
# True
# >>> below_threshold([1, 20, 4, 10], 5)
# False
sub below_threshold {
    my($l, $t) = @_;
    my $i = 0;
    while ($i < @$l) {
        return 0 if $l->[$i] > $t;
        $i++;
    }
    return 1;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&below_threshold;
        if(eq_deeply($candidate->([1, 2, 4, 10], 100),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 20, 4, 10], 5),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 20, 4, 10], 21),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 20, 4, 10], 22),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 8, 4, 10], 11),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 8, 4, 10], 10),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
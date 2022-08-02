# Return True is list elements are monotonically increasing or decreasing.
# >>> monotonic([1, 2, 4, 20])
# True
# >>> monotonic([1, 20, 4, 10])
# False
# >>> monotonic([4, 1, 0, -10])
# True
sub monotonic {
    my($l) = @_;
    my $i = 0;
    my $mono = 1;
    while ($i < $#$l) {
        if ($l->[$i] > $l->[$i+1]) {
            $mono = 0;
            last;
        }
        $i++;
    }
    return $mono;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&monotonic;
        if(eq_deeply($candidate->([1, 2, 4, 10]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 4, 20]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 20, 4, 10]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([4, 1, 0, -10]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([4, 1, 1, 0]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 2, 5, 60]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4, 5, 60]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([9, 9, 9, 9]),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
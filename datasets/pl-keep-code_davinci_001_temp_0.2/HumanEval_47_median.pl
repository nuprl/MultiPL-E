# Return median of elements in the list l.
# >>> median([3, 1, 2, 4, 5])
# 3
# >>> median([-10, 4, 6, 1000, 10, 20])
# 15.0
sub median {
    my($l) = @_;
    my $n = @$l;
    my $i = $n / 2;
    if($n % 2) {
        return $l->[$i];
    } else {
        return ($l->[$i-1] + $l->[$i]) / 2;
    }
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&median;
        if(eq_deeply($candidate->([3, 1, 2, 4, 5]),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-10, 4, 6, 1000, 10, 20]),8.0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5]),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([6, 5]),5.5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([8, 1, 3, 9, 9, 2, 7]),7)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
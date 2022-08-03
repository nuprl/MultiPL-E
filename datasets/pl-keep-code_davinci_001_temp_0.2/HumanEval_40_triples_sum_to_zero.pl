# triples_sum_to_zero takes a list of integers as an input.
# it returns True if there are three distinct elements in the list that
# sum to zero, and False otherwise.
# >>> triples_sum_to_zero([1, 3, 5, 0])
# False
# >>> triples_sum_to_zero([1, 3, -2, 1])
# True
# >>> triples_sum_to_zero([1, 2, 3, 7])
# False
# >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
# True
# >>> triples_sum_to_zero([1])
# False
sub triples_sum_to_zero {
    my($l) = @_;
    my %h;
    for my $i (@$l) {
        if ($h{$i}) {
            $h{$i}++;
        } else {
            $h{$i} = 1;
        }
    }
    my @a = sort {$a <=> $b} keys %h;
    for my $i (0..$#a) {
        for my $j ($i+1..$#a) {
            my $k = -($a[$i] + $a[$j]);
            if ($h{$k}) {
                return 1;
            }
        }
    }
    return 0;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&triples_sum_to_zero;
        if(eq_deeply($candidate->([1, 3, 5, 0]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 3, 5, -1]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 3, -2, 1]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 7]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 5, 7]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 4, -5, 3, 9, 7]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 3, 5, -100]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([100, 3, 5, -100]),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
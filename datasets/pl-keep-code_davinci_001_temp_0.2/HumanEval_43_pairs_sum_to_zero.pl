# pairs_sum_to_zero takes a list of integers as an input.
# it returns True if there are two distinct elements in the list that
# sum to zero, and False otherwise.
# >>> pairs_sum_to_zero([1, 3, 5, 0])
# False
# >>> pairs_sum_to_zero([1, 3, -2, 1])
# False
# >>> pairs_sum_to_zero([1, 2, 3, 7])
# False
# >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
# True
# >>> pairs_sum_to_zero([1])
# False
sub pairs_sum_to_zero {
    my($l) = @_;
    my %h;
    foreach my $x (@$l) {
        if (exists $h{$x}) {
            return 1;
        }
        $h{-$x} = 1;
    }
    return 0;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&pairs_sum_to_zero;
        if(eq_deeply($candidate->([1, 3, 5, 0]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 3, -2, 1]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 7]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 4, -5, 3, 5, 7]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-3, 9, -1, 3, 2, 30]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-3, 9, -1, 3, 2, 31]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-3, 9, -1, 4, 2, 30]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-3, 9, -1, 4, 2, 31]),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
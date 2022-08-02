# Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
# Examples
# solution([5, 8, 7, 1]) ==> 12
# solution([3, 3, 3, 3, 3]) ==> 9
# solution([30, 13, 24, 321]) ==>0
sub solution {
    my($lst) = @_;
    my $sum = 0;
    for (my $i = 0; $i < @$lst; $i += 2) {
        $sum += $lst->[$i];
    }
    return $sum;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&solution;
        if(eq_deeply($candidate->([5, 8, 7, 1]),12)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 3, 3, 3, 3]),9)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([30, 13, 24, 321]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 9]),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 4, 8]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([30, 13, 23, 32]),23)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 13, 2, 9]),3)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
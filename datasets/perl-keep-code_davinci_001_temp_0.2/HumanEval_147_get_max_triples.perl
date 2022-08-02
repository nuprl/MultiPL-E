# You are given a positive integer n. You have to create an integer array a of length n.
# For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
# Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
# and a[i] + a[j] + a[k] is a multiple of 3.
# Example :
# Input: n = 5
# Output: 1
# Explanation: 
# a = [1, 3, 7, 13, 21]
# The only valid triple is (1, 7, 13).
sub get_max_triples {
    my($n) = @_;
    my $max_triples = 0;
    my $i = 1;
    while($i <= $n) {
        my $j = $i + 1;
        while($j <= $n) {
            my $k = $j + 1;
            while($k <= $n) {
                my $sum = $i + $j + $k;
                if($sum % 3 == 0) {
                    $max_triples++;
                }
                $k++;
            }
            $j++;
        }
        $i++;
    }
    return $max_triples;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&get_max_triples;
        if(eq_deeply($candidate->(5),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(6),4)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10),36)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(100),53361)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
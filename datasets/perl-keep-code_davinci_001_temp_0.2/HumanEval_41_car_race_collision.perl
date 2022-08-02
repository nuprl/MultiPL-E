# Imagine a road that's a perfectly straight infinitely long line.
# n cars are driving left to right;  simultaneously, a different set of n cars
# are driving right to left.   The two sets of cars start out being very far from
# each other.  All cars move in the same speed.  Two cars are said to collide
# when a car that's moving left to right hits a car that's moving right to left.
# However, the cars are infinitely sturdy and strong; as a result, they continue moving
# in their trajectory as if they did not collide.
# This function outputs the number of such collisions.
sub car_race_collision {
    my($n) = @_;
    my $collision = 0;
    for(my $i = 0; $i < $n; $i++) {
        my $car_i = $i;
        my $car_j = $i + $n;
        while($car_i < $n && $car_j < 2 * $n) {
            if($car_i == $car_j) {
                $collision++;
            }
            $car_i++;
            $car_j++;
        }
    }
    return $collision;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&car_race_collision;
        if(eq_deeply($candidate->(2),4)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(3),9)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(4),16)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(8),64)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10),100)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
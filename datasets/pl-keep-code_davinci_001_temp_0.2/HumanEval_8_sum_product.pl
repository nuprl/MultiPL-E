# For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
# Empty sum should be equal to 0 and empty product should be equal to 1.
# >>> sum_product([])
# (0, 1)
# >>> sum_product([1, 2, 3, 4])
# (10, 24)
sub sum_product {
    my($numbers) = @_;
    my $sum = 0;
    my $product = 1;
    foreach my $number (@$numbers) {
        $sum += $number;
        $product *= $number;
    }
    return($sum, $product);
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&sum_product;
        if(eq_deeply($candidate->([]),[0, 1])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 1, 1]),[3, 1])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([100, 0]),[100, 0])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 5, 7]),[15, 105])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([10]),[10, 10])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
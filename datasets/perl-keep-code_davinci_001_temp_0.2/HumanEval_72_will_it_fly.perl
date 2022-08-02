# Write a function that returns True if the object q will fly, and False otherwise.
# The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
# Example:
# will_it_fly([1, 2], 5) ➞ False 
# # 1+2 is less than the maximum possible weight, but it's unbalanced.
# will_it_fly([3, 2, 3], 1) ➞ False
# # it's balanced, but 3+2+3 is more than the maximum possible weight.
# will_it_fly([3, 2, 3], 9) ➞ True
# # 3+2+3 is less than the maximum possible weight, and it's balanced.
# will_it_fly([3], 5) ➞ True
# # 3 is less than the maximum possible weight, and it's balanced.
sub will_it_fly {
    my($q, $w) = @_;
    my $sum = 0;
    for(@$q) {
        $sum += $_;
    }
    return $sum <= $w && is_palindrome($q);
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&will_it_fly;
        if(eq_deeply($candidate->([3, 2, 3], 9),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2], 5),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3], 5),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 2, 3], 1),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3], 6),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5], 5),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
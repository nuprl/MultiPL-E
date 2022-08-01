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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&will_it_fly;
    my @arg0 = (3, 2, 3);
    if(Compare($candidate->(\@arg0, 9),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 2, 3);
    my @arg1 = (1, 2);
    if(Compare($candidate->(\@arg1, 5),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 2, 3);
    my @arg1 = (1, 2);
    my @arg2 = (3);
    if(Compare($candidate->(\@arg2, 5),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 2, 3);
    my @arg1 = (1, 2);
    my @arg2 = (3);
    my @arg3 = (3, 2, 3);
    if(Compare($candidate->(\@arg3, 1),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 2, 3);
    my @arg1 = (1, 2);
    my @arg2 = (3);
    my @arg3 = (3, 2, 3);
    my @arg4 = (1, 2, 3);
    if(Compare($candidate->(\@arg4, 6),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 2, 3);
    my @arg1 = (1, 2);
    my @arg2 = (3);
    my @arg3 = (3, 2, 3);
    my @arg4 = (1, 2, 3);
    my @arg5 = (5);
    if(Compare($candidate->(\@arg5, 5),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
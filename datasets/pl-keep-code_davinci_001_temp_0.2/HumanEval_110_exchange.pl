# In this problem, you will implement a function that takes two lists of numbers,
# and determines whether it is possible to perform an exchange of elements
# between them to make lst1 a list of only even numbers.
# There is no limit on the number of exchanged elements between lst1 and lst2.
# If it is possible to exchange elements between the lst1 and lst2 to make
# all the elements of lst1 to be even, return "YES".
# Otherwise, return "NO".
# For example:
# exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
# exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
# It is assumed that the input lists will be non-empty.
sub exchange {
    my($lst1, $lst2) = @_;
    my $i = 0;
    my $j = 0;
    my $count = 0;
    my $flag = 0;
    while ($i < scalar(@$lst1)) {
        if ($lst1->[$i] % 2 == 0) {
            $count++;
        }
        $i++;
    }
    if ($count == scalar(@$lst1)) {
        return "YES";
    }
    while ($j < scalar(@$lst2)) {
        if ($lst2->[$j] % 2 == 0) {
            $count++;
        }
        $j++;
    }
    if ($count == scalar(@$lst2)) {
        return "YES";
    }
    return "NO";
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&exchange;
        if(eq_deeply($candidate->([1, 2, 3, 4], [1, 2, 3, 4]),"YES")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4], [1, 5, 3, 4]),"NO")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4], [2, 1, 4, 3]),"YES")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 7, 3], [2, 6, 4]),"YES")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 7, 3], [2, 6, 3]),"NO")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, 2, 6, 1, 8, 9], [3, 5, 5, 1, 1, 1]),"NO")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([100, 200], [200, 200]),"YES")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
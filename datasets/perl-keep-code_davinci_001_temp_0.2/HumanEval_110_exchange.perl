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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&exchange;
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 2, 3, 4);
    if(Compare($candidate->(\@arg0, \@arg1),"YES")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 2, 3, 4);
    my @arg2 = (1, 2, 3, 4);
    my @arg3 = (1, 5, 3, 4);
    if(Compare($candidate->(\@arg2, \@arg3),"NO")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 2, 3, 4);
    my @arg2 = (1, 2, 3, 4);
    my @arg3 = (1, 5, 3, 4);
    my @arg4 = (1, 2, 3, 4);
    my @arg5 = (2, 1, 4, 3);
    if(Compare($candidate->(\@arg4, \@arg5),"YES")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 2, 3, 4);
    my @arg2 = (1, 2, 3, 4);
    my @arg3 = (1, 5, 3, 4);
    my @arg4 = (1, 2, 3, 4);
    my @arg5 = (2, 1, 4, 3);
    my @arg6 = (5, 7, 3);
    my @arg7 = (2, 6, 4);
    if(Compare($candidate->(\@arg6, \@arg7),"YES")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 2, 3, 4);
    my @arg2 = (1, 2, 3, 4);
    my @arg3 = (1, 5, 3, 4);
    my @arg4 = (1, 2, 3, 4);
    my @arg5 = (2, 1, 4, 3);
    my @arg6 = (5, 7, 3);
    my @arg7 = (2, 6, 4);
    my @arg8 = (5, 7, 3);
    my @arg9 = (2, 6, 3);
    if(Compare($candidate->(\@arg8, \@arg9),"NO")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 2, 3, 4);
    my @arg2 = (1, 2, 3, 4);
    my @arg3 = (1, 5, 3, 4);
    my @arg4 = (1, 2, 3, 4);
    my @arg5 = (2, 1, 4, 3);
    my @arg6 = (5, 7, 3);
    my @arg7 = (2, 6, 4);
    my @arg8 = (5, 7, 3);
    my @arg9 = (2, 6, 3);
    my @arg10 = (3, 2, 6, 1, 8, 9);
    my @arg11 = (3, 5, 5, 1, 1, 1);
    if(Compare($candidate->(\@arg10, \@arg11),"NO")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4);
    my @arg1 = (1, 2, 3, 4);
    my @arg2 = (1, 2, 3, 4);
    my @arg3 = (1, 5, 3, 4);
    my @arg4 = (1, 2, 3, 4);
    my @arg5 = (2, 1, 4, 3);
    my @arg6 = (5, 7, 3);
    my @arg7 = (2, 6, 4);
    my @arg8 = (5, 7, 3);
    my @arg9 = (2, 6, 3);
    my @arg10 = (3, 2, 6, 1, 8, 9);
    my @arg11 = (3, 5, 5, 1, 1, 1);
    my @arg12 = (100, 200);
    my @arg13 = (200, 200);
    if(Compare($candidate->(\@arg12, \@arg13),"YES")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
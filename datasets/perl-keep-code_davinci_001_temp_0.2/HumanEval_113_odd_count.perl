# Given a list of strings, where each string consists of only digits, return a list.
# Each element i of the output should be "the number of odd elements in the
# string i of the input." where all the i's should be replaced by the number
# of odd digits in the i'th string of the input.
# >>> odd_count(['1234567'])
# ["the number of odd elements 4n the str4ng 4 of the 4nput."]
# >>> odd_count(['3',"11111111"])
# ["the number of odd elements 1n the str1ng 1 of the 1nput.",
# "the number of odd elements 8n the str8ng 8 of the 8nput."]
sub odd_count {
    my($lst) = @_;
    my @result;
    foreach my $str (@$lst) {
        my $count = 0;
        foreach my $c (split //, $str) {
            $count++ if $c % 2;
        }
        push @result, "the number of odd elements $count in the string $str of the input.";
    }
    return \@result;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&odd_count;
    my @arg0 = ("1234567");
    my @arg1 = ("the number of odd elements 4n the str4ng 4 of the 4nput.");
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("1234567");
    my @arg1 = ("the number of odd elements 4n the str4ng 4 of the 4nput.");
    my @arg2 = ("3", "11111111");
    my @arg3 = ("the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput.");
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("1234567");
    my @arg1 = ("the number of odd elements 4n the str4ng 4 of the 4nput.");
    my @arg2 = ("3", "11111111");
    my @arg3 = ("the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput.");
    my @arg4 = ("271", "137", "314");
    my @arg5 = ("the number of odd elements 2n the str2ng 2 of the 2nput.", "the number of odd elements 3n the str3ng 3 of the 3nput.", "the number of odd elements 2n the str2ng 2 of the 2nput.");
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
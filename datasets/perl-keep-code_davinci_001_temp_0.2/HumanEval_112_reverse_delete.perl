# Task
# We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
# then check if the result string is palindrome.
# A string is called palindrome if it reads the same backward as forward.
# You should return a tuple containing the result string and True/False for the check.
# Example
# For s = "abcde", c = "ae", the result should be ('bcd',False)
# For s = "abcdef", c = "b"  the result should be ('acdef',False)
# For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
sub reverse_delete {
    my($s, $c) = @_;
    my $result = '';
    for my $i (0..length($s)-1) {
        my $char = substr($s, $i, 1);
        if (index($c, $char) == -1) {
            $result .= $char;
        }
    }
    return ($result, $result eq reverse($result));
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&reverse_delete;
    if(Compare($candidate->("abcde", "ae"),("bcd", ))) {
        print "ok!" }else{
        exit 1;
        }
    if(Compare($candidate->("abcdef", "b"),("acdef", ))) {
        print "ok!" }else{
        exit 1;
        }
    if(Compare($candidate->("abcdedcba", "ab"),("cdedc", ))) {
        print "ok!" }else{
        exit 1;
        }
    if(Compare($candidate->("dwik", "w"),("dik", ))) {
        print "ok!" }else{
        exit 1;
        }
    if(Compare($candidate->("a", "a"),("", ))) {
        print "ok!" }else{
        exit 1;
        }
    if(Compare($candidate->("abcdedcba", ""),("abcdedcba", ))) {
        print "ok!" }else{
        exit 1;
        }
    if(Compare($candidate->("abcdedcba", "v"),("abcdedcba", ))) {
        print "ok!" }else{
        exit 1;
        }
    if(Compare($candidate->("vabba", "v"),("abba", ))) {
        print "ok!" }else{
        exit 1;
        }
    if(Compare($candidate->("mamma", "mia"),("", ))) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
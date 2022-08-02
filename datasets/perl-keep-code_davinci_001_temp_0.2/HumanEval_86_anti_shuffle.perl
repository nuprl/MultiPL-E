# Write a function that takes a string and returns an ordered version of it.
# Ordered version of string, is a string where all words (separated by space)
# are replaced by a new word where all the characters arranged in
# ascending order based on ascii value.
# Note: You should keep the order of words and blank spaces in the sentence.
# For example:
# anti_shuffle('Hi') returns 'Hi'
# anti_shuffle('hello') returns 'ehllo'
# anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
sub anti_shuffle {
    my($s) = @_;
    my @words = split(/\s+/, $s);
    my $result = '';
    for my $word (@words) {
        $result .= join('', sort(split(//, $word)));
    }
    return $result;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&anti_shuffle;
        if(eq_deeply($candidate->("Hi"),"Hi")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("hello"),"ehllo")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("number"),"bemnru")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("abcd"),"abcd")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Hello World!!!"),"Hello !!!Wdlor")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Hi. My name is Mister Robot. How are you?"),".Hi My aemn is Meirst .Rboot How aer ?ouy")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
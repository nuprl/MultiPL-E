# Given a string s and a natural number n, you have been tasked to implement 
# a function that returns a list of all words from string s that contain exactly 
# n consonants, in order these words appear in the string s.
# If the string s is empty then the function should return an empty list.
# Note: you may assume the input string contains only letters and spaces.
# Examples:
# select_words("Mary had a little lamb", 4) ==> ["little"]
# select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
# select_words("simple white space", 2) ==> []
# select_words("Hello world", 4) ==> ["world"]
# select_words("Uncle sam", 3) ==> ["Uncle"]
sub select_words {
    my($s, $n) = @_;
    my @words = split /\s+/, $s;
    my @result;
    for my $word (@words) {
        my $count = 0;
        for my $char (split //, $word) {
            $count++ if $char =~ /[^aeiou]/i;
        }
        push @result, $word if $count == $n;
    }
    return @result;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&select_words;
        if(eq_deeply($candidate->("Mary had a little lamb", 4),["little"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Mary had a little lamb", 3),["Mary", "lamb"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("simple white space", 2),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Hello world", 4),["world"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Uncle sam", 3),["Uncle"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("", 4),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("a b c d e f", 1),["b", "c", "d", "f"])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
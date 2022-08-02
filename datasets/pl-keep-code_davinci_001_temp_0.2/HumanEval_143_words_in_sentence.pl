# You are given a string representing a sentence,
# the sentence contains some words separated by a space,
# and you have to return a string that contains the words from the original sentence,
# whose lengths are prime numbers,
# the order of the words in the new string should be the same as the original one.
# Example 1:
# Input: sentence = "This is a test"
# Output: "is"
# Example 2:
# Input: sentence = "lets go for swimming"
# Output: "go for"
# Constraints:
# * 1 <= len(sentence) <= 100
# * sentence contains only letters
sub words_in_sentence {
    my($sentence) = @_;
    my @words = split / /, $sentence;
    my @res = ();
    for my $word (@words) {
        if (is_prime(length $word)) {
            push @res, $word;
        }
    }
    return join ' ', @res;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&words_in_sentence;
        if(eq_deeply($candidate->("This is a test"),"is")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("lets go for swimming"),"go for")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("there is no place available here"),"there is no place")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Hi I am Hussein"),"Hi am Hussein")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("go for it"),"go for it")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("here"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("here is"),"is")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
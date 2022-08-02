# Write a function that accepts a list of strings.
# The list contains different words. Return the word with maximum number
# of unique characters. If multiple strings have maximum number of unique
# characters, return the one which comes first in lexicographical order.
# find_max(["name", "of", "string"]) == "string"
# find_max(["name", "enam", "game"]) == "enam"
# find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
sub find_max {
    my($words) = @_;
    my $max = 0;
    my $max_word = "";
    foreach my $word (@$words) {
        my $count = 0;
        foreach my $letter (split //, $word) {
            $count++ if $letter =~ /[a-zA-Z]/;
        }
        if ($count > $max) {
            $max = $count;
            $max_word = $word;
        }
    }
    return $max_word;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&find_max;
        if(eq_deeply($candidate->(["name", "of", "string"]),"string")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["name", "enam", "game"]),"enam")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["aaaaaaa", "bb", "cc"]),"aaaaaaa")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["abc", "cba"]),"abc")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["play", "this", "game", "of", "footbott"]),"footbott")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["we", "are", "gonna", "rock"]),"gonna")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["we", "are", "a", "mad", "nation"]),"nation")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["this", "is", "a", "prrk"]),"this")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["b"]),"b")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["play", "play", "play"]),"play")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
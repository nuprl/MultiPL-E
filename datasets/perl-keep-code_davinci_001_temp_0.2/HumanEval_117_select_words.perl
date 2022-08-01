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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&select_words;
    my @arg0 = ("little");
    if(Compare($candidate->("Mary had a little lamb", 4),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("little");
    my @arg1 = ("Mary", "lamb");
    if(Compare($candidate->("Mary had a little lamb", 3),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("little");
    my @arg1 = ("Mary", "lamb");
    my @arg2 = ();
    if(Compare($candidate->("simple white space", 2),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("little");
    my @arg1 = ("Mary", "lamb");
    my @arg2 = ();
    my @arg3 = ("world");
    if(Compare($candidate->("Hello world", 4),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("little");
    my @arg1 = ("Mary", "lamb");
    my @arg2 = ();
    my @arg3 = ("world");
    my @arg4 = ("Uncle");
    if(Compare($candidate->("Uncle sam", 3),\@arg4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("little");
    my @arg1 = ("Mary", "lamb");
    my @arg2 = ();
    my @arg3 = ("world");
    my @arg4 = ("Uncle");
    my @arg5 = ();
    if(Compare($candidate->("", 4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("little");
    my @arg1 = ("Mary", "lamb");
    my @arg2 = ();
    my @arg3 = ("world");
    my @arg4 = ("Uncle");
    my @arg5 = ();
    my @arg6 = ("b", "c", "d", "f");
    if(Compare($candidate->("a b c d e f", 1),\@arg6)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
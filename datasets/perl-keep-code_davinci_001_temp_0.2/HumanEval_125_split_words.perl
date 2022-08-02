# Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
# should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
# alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
# Examples
# split_words("Hello world!") ➞ ["Hello", "world!"]
# split_words("Hello,world!") ➞ ["Hello", "world!"]
# split_words("abcdef") == 3
sub split_words {
    my($txt) = @_;
    my @words = split /\s+/, $txt;
    return @words if @words;
    @words = split /,/, $txt;
    return @words if @words;
    my $count = 0;
    for my $c (split //, $txt) {
        $count += ($c =~ /[a-z]/ ? 1 : -1);
    }
    return $count;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&split_words;
    my @arg0 = ("Hello", "world!");
    if(Compare($candidate->("Hello world!"),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hello", "world!");
    my @arg1 = ("Hello", "world!");
    if(Compare($candidate->("Hello,world!"),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hello", "world!");
    my @arg1 = ("Hello", "world!");
    my @arg2 = ("Hello", "world,!");
    if(Compare($candidate->("Hello world,!"),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hello", "world!");
    my @arg1 = ("Hello", "world!");
    my @arg2 = ("Hello", "world,!");
    my @arg3 = ("Hello,Hello,world", "!");
    if(Compare($candidate->("Hello,Hello,world !"),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hello", "world!");
    my @arg1 = ("Hello", "world!");
    my @arg2 = ("Hello", "world,!");
    my @arg3 = ("Hello,Hello,world", "!");
    if(Compare($candidate->("abcdef"),3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hello", "world!");
    my @arg1 = ("Hello", "world!");
    my @arg2 = ("Hello", "world,!");
    my @arg3 = ("Hello,Hello,world", "!");
    if(Compare($candidate->("aaabb"),2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hello", "world!");
    my @arg1 = ("Hello", "world!");
    my @arg2 = ("Hello", "world,!");
    my @arg3 = ("Hello,Hello,world", "!");
    if(Compare($candidate->("aaaBb"),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hello", "world!");
    my @arg1 = ("Hello", "world!");
    my @arg2 = ("Hello", "world,!");
    my @arg3 = ("Hello,Hello,world", "!");
    if(Compare($candidate->(""),0)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
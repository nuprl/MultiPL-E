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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&find_max;
    my @arg0 = ("name", "of", "string");
    if(Compare($candidate->(\@arg0),"string")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("name", "of", "string");
    my @arg1 = ("name", "enam", "game");
    if(Compare($candidate->(\@arg1),"enam")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("name", "of", "string");
    my @arg1 = ("name", "enam", "game");
    my @arg2 = ("aaaaaaa", "bb", "cc");
    if(Compare($candidate->(\@arg2),"aaaaaaa")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("name", "of", "string");
    my @arg1 = ("name", "enam", "game");
    my @arg2 = ("aaaaaaa", "bb", "cc");
    my @arg3 = ("abc", "cba");
    if(Compare($candidate->(\@arg3),"abc")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("name", "of", "string");
    my @arg1 = ("name", "enam", "game");
    my @arg2 = ("aaaaaaa", "bb", "cc");
    my @arg3 = ("abc", "cba");
    my @arg4 = ("play", "this", "game", "of", "footbott");
    if(Compare($candidate->(\@arg4),"footbott")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("name", "of", "string");
    my @arg1 = ("name", "enam", "game");
    my @arg2 = ("aaaaaaa", "bb", "cc");
    my @arg3 = ("abc", "cba");
    my @arg4 = ("play", "this", "game", "of", "footbott");
    my @arg5 = ("we", "are", "gonna", "rock");
    if(Compare($candidate->(\@arg5),"gonna")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("name", "of", "string");
    my @arg1 = ("name", "enam", "game");
    my @arg2 = ("aaaaaaa", "bb", "cc");
    my @arg3 = ("abc", "cba");
    my @arg4 = ("play", "this", "game", "of", "footbott");
    my @arg5 = ("we", "are", "gonna", "rock");
    my @arg6 = ("we", "are", "a", "mad", "nation");
    if(Compare($candidate->(\@arg6),"nation")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("name", "of", "string");
    my @arg1 = ("name", "enam", "game");
    my @arg2 = ("aaaaaaa", "bb", "cc");
    my @arg3 = ("abc", "cba");
    my @arg4 = ("play", "this", "game", "of", "footbott");
    my @arg5 = ("we", "are", "gonna", "rock");
    my @arg6 = ("we", "are", "a", "mad", "nation");
    my @arg7 = ("this", "is", "a", "prrk");
    if(Compare($candidate->(\@arg7),"this")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("name", "of", "string");
    my @arg1 = ("name", "enam", "game");
    my @arg2 = ("aaaaaaa", "bb", "cc");
    my @arg3 = ("abc", "cba");
    my @arg4 = ("play", "this", "game", "of", "footbott");
    my @arg5 = ("we", "are", "gonna", "rock");
    my @arg6 = ("we", "are", "a", "mad", "nation");
    my @arg7 = ("this", "is", "a", "prrk");
    my @arg8 = ("b");
    if(Compare($candidate->(\@arg8),"b")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("name", "of", "string");
    my @arg1 = ("name", "enam", "game");
    my @arg2 = ("aaaaaaa", "bb", "cc");
    my @arg3 = ("abc", "cba");
    my @arg4 = ("play", "this", "game", "of", "footbott");
    my @arg5 = ("we", "are", "gonna", "rock");
    my @arg6 = ("we", "are", "a", "mad", "nation");
    my @arg7 = ("this", "is", "a", "prrk");
    my @arg8 = ("b");
    my @arg9 = ("play", "play", "play");
    if(Compare($candidate->(\@arg9),"play")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
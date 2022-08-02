# You are given a word. Your task is to find the closest vowel that stands between 
# two consonants from the right side of the word (case sensitive).
# Vowels in the beginning and ending doesn't count. Return empty string if you didn't
# find any vowel met the above condition. 
# You may assume that the given string contains English letter only.
# Example:
# get_closest_vowel("yogurt") ==> "u"
# get_closest_vowel("FULL") ==> "U"
# get_closest_vowel("quick") ==> ""
# get_closest_vowel("ab") ==> ""
sub get_closest_vowel {
    my($word) = @_;
    my $vowel = "aeiou";
    my $consonant = "qwrtypsdfghjklzxcvbnm";
    my $result = "";
    my $i = 0;
    my $j = 0;
    my $k = 0;
    my $l = 0;
    my $m = 0;
    my $n = 0;
    my $o = 0;
    my $p = 0;
    my $q = 0;
    my $r = 0;
    my $s = 0;
    my $t = 0;
    my $u = 0;
    my $v = 0;
    my $w = 0;
    my $x = 0;
    my $y = 0;
    my $z = 0;
    my $a = 0;
    my $b = 0;
    my $c = 0;
    my $d = 0;
    my $e = 0;
    my $f = 0;
    my $g = 0;
    my $h = 0;
    my $i = 0;
    my $j = 0;
    my $k = 0;
    my $l = 0;
    my $m = 0;
    my $n = 0;
    my $o = 0;
    my $p = 0;
    my $q = 0;
    my $r = 0;
    my $s = 0;
    my $t = 0;
    my $u = 0;
    my $v = 0;
    my $w = 0;
    my $x = 0;
    my $y = 0;
    my $z = 0;
    my $a = 0;
    my $b = 0;
    my $c = 0;
    my $d = 0;
    my $e = 0;
    my $f = 0;
    my $g = 0;
    my $h = 0;
    my $i = 0;
    my $j = 0;
    my $k = 0;
    my $l = 0;
    my $m = 0;

use Data::Compare;


sub testhumaneval {
    my $candidate = \&get_closest_vowel;
        if(Compare($candidate->("yogurt"),"u")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("full"),"u")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("easy"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("eAsy"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("ali"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("bad"),"a")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("most"),"o")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("ab"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("ba"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("quick"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("anime"),"i")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("Asia"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("Above"),"o")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
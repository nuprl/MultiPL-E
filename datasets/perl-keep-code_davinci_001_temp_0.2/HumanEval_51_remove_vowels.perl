# remove_vowels is a function that takes string and returns string without vowels.
# >>> remove_vowels('')
# ''
# >>> remove_vowels('abcdef')
# 'bcdf'
# >>> remove_vowels('aaaaa')
# ''
# >>> remove_vowels('aaBAA')
# 'B'
# >>> remove_vowels('zbcd')
# 'zbcd'
sub remove_vowels {
    my($text) = @_;
    $text =~ s/[aeiou]//gi;
    return $text;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&remove_vowels;
        if(Compare($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("abcdef
ghijklm"),"bcdf
ghjklm")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("fedcba"),"fdcb")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("eeeee"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("acBAA"),"cB")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("EcBOO"),"cB")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("ybcd"),"ybcd")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&remove_vowels;
        if(eq_deeply($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("abcdef
ghijklm"),"bcdf
ghjklm")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("fedcba"),"fdcb")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("eeeee"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("acBAA"),"cB")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("EcBOO"),"cB")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("ybcd"),"ybcd")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Create a function that returns True if the last character
# of a given string is an alphabetical character and is not
# a part of a word, and False otherwise.
# Note: "word" is a group of characters separated by space.
# Examples:
# check_if_last_char_is_a_letter("apple pie") ➞ False
# check_if_last_char_is_a_letter("apple pi e") ➞ True
# check_if_last_char_is_a_letter("apple pi e ") ➞ False
# check_if_last_char_is_a_letter("") ➞ False
sub check_if_last_char_is_a_letter {
    my($txt) = @_;
    $txt =~ s/\s+$//;
    return $txt =~ /\w$/ ? 1 : 0;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&check_if_last_char_is_a_letter;
        if(Compare($candidate->("apple"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("apple pi e"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("eeeee"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("A"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("Pumpkin pie "),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("Pumpkin pie 1"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("eeeee e "),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("apple pie"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("apple pi e "),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
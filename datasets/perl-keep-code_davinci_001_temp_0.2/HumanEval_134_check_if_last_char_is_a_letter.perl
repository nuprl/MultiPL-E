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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&check_if_last_char_is_a_letter;
        if(eq_deeply($candidate->("apple"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("apple pi e"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("eeeee"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("A"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Pumpkin pie "),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Pumpkin pie 1"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("eeeee e "),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("apple pie"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("apple pi e "),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
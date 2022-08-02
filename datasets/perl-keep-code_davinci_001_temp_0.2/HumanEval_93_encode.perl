# Write a function that takes a message, and encodes in such a 
# way that it swaps case of all letters, replaces all vowels in 
# the message with the letter that appears 2 places ahead of that 
# vowel in the english alphabet. 
# Assume only letters. 
# Examples:
# >>> encode('test')
# 'TGST'
# >>> encode('This is a message')
# 'tHKS KS C MGSSCGG'
sub encode {
    my($message) = @_;
    my $alphabet = 'abcdefghijklmnopqrstuvwxyz';
    my $encoded = '';
    foreach my $letter (split //, $message) {
        if ($letter =~ /[a-z]/) {
            my $index = index($alphabet, $letter);
            my $new_index = ($index + 2) % 26;
            $encoded .= substr($alphabet, $new_index, 1);
        } else {
            $encoded .= $letter;
        }
    }
    return $encoded;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&encode;
        if(eq_deeply($candidate->("TEST"),"tgst")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Mudasir"),"mWDCSKR")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("YES"),"ygs")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("This is a message"),"tHKS KS C MGSSCGG")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("I DoNt KnOw WhAt tO WrItE"),"k dQnT kNqW wHcT Tq wRkTg")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
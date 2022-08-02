# Checks if given string is a palindrome
# >>> is_palindrome('')
# True
# >>> is_palindrome('aba')
# True
# >>> is_palindrome('aaaaa')
# True
# >>> is_palindrome('zbcd')
# False
sub is_palindrome {
    my($text) = @_;
    $text = lc($text);
    $text =~ s/\W//g;
    my $len = length($text);
    for(my $i = 0; $i < $len / 2; $i++) {
        if($text->[$i] ne $text->[$len - $i - 1]) {
            return 0;
        }
    }
    return 1;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&is_palindrome;
        if(eq_deeply($candidate->(""),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("aba"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("aaaaa"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("zbcd"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("xywyx"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("xywyz"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("xywzx"),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
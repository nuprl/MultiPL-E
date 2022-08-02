# Find the shortest palindrome that begins with a supplied string.
# Algorithm idea is simple:
# - Find the longest postfix of supplied string that is a palindrome.
# - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
# >>> make_palindrome('')
# ''
# >>> make_palindrome('cat')
# 'catac'
# >>> make_palindrome('cata')
# 'catac'
sub make_palindrome {
    my($string) = @_;
    my $palindrome = $string;
    my $prefix = $string;
    my $suffix = $string;
    while (1) {
        $prefix = substr($prefix, 0, length($prefix) - 1);
        $suffix = substr($suffix, 1);
        if (is_palindrome($prefix)) {
            $palindrome = $prefix . $suffix;
            last;
        }
    }
    return $palindrome;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&make_palindrome;
        if(eq_deeply($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("x"),"x")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("xyz"),"xyzyx")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("xyx"),"xyx")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("jerry"),"jerryrrej")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
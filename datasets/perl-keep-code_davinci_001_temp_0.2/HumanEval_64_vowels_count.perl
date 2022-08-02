# Write a function vowels_count which takes a string representing
# a word as input and returns the number of vowels in the string.
# Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
# vowel, but only when it is at the end of the given word.
# Example:
# >>> vowels_count("abcde")
# 2
# >>> vowels_count("ACEDY")
# 3
sub vowels_count {
    my($s) = @_;
    my $vowels = 0;
    for my $c (split //, $s) {
        if ($c =~ /[aeiou]/i) {
            $vowels++;
        }
    }
    return $vowels;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&vowels_count;
        if(eq_deeply($candidate->("abcde"),2)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Alone"),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("key"),2)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("bye"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("keY"),2)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("bYe"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("ACEDY"),3)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
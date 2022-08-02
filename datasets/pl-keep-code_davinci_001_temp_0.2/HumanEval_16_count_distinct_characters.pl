# Given a string, find out how many distinct characters (regardless of case) does it consist of
# >>> count_distinct_characters('xyzXYZ')
# 3
# >>> count_distinct_characters('Jerry')
# 4
sub count_distinct_characters {
    my($string) = @_;
    my %seen;
    $seen{$_}++ for split //, $string;
    return scalar keys %seen;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&count_distinct_characters;
        if(eq_deeply($candidate->(""),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("abcde"),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("abcdecadeCADE"),5)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("aaaaAAAAaaaa"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Jerry jERRY JeRRRY"),5)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Task
# Write a function that takes a string as input and returns the sum of the upper characters only'
# ASCII codes.
# Examples:
# digitSum("") => 0
# digitSum("abAB") => 131
# digitSum("abcCd") => 67
# digitSum("helloE") => 69
# digitSum("woArBld") => 131
# digitSum("aAaaaXa") => 153
sub digitSum {
    my($s) = @_;
    my $sum = 0;
    for my $c (split //, $s) {
        $sum += $c =~ /[A-Z]/ ? ord($c) - ord('A') + 1 : 0;
    }
    return $sum;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&digitSum;
        if(eq_deeply($candidate->(""),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("abAB"),131)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("abcCd"),67)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("helloE"),69)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("woArBld"),131)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("aAaaaXa"),153)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(" How are yOu?"),151)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("You arE Very Smart"),327)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
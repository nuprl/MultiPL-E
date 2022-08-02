# Check if two words have the same characters.
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
# True
# >>> same_chars('abcd', 'dddddddabc')
# True
# >>> same_chars('dddddddabc', 'abcd')
# True
# >>> same_chars('eabcd', 'dddddddabc')
# False
# >>> same_chars('abcd', 'dddddddabce')
# False
# >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
# False
sub same_chars {
    my($s0, $s1) = @_;
    my %chars0 = map { $_ => 1 } split //, $s0;
    my %chars1 = map { $_ => 1 } split //, $s1;
    return scalar(keys %chars0) == scalar(keys %chars1);
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&same_chars;
        if(Compare($candidate->("eabcdzzzz", "dddzzzzzzzddeddabc"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("abcd", "dddddddabc"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("dddddddabc", "abcd"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("eabcd", "dddddddabc"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("abcd", "dddddddabcf"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("eabcdzzzz", "dddzzzzzzzddddabc"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("aabb", "aaccc"),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
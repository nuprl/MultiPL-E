# You are given a string s.
# if s[i] is a letter, reverse its case from lower to upper or vise versa, 
# otherwise keep it as it is.
# If the string contains no letters, reverse the string.
# The function should return the resulted string.
# Examples
# solve("1234") = "4321"
# solve("ab") = "AB"
# solve("#a@C") = "#A@c"
sub solve {
    my($s) = @_;
    my @s = split //, $s;
    my @res;
    for my $c (@s) {
        if ($c =~ /[a-z]/) {
            push @res, $c =~ /[a-z]/ ? uc $c : lc $c;
        } else {
            push @res, $c;
        }
    }
    return join '', @res;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&solve;
        if(Compare($candidate->("AsDf"),"aSdF")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("1234"),"4321")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("ab"),"AB")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("#a@C"),"#A@c")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("#AsdfW^45"),"#aSDFw^45")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("#6@2"),"2@6#")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("#$a^D"),"#$A^d")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("#ccc"),"#CCC")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
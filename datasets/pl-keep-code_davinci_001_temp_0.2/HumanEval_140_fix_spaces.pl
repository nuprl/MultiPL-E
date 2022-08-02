# Given a string text, replace all spaces in it with underscores, 
# and if a string has more than 2 consecutive spaces, 
# then replace all consecutive spaces with - 
# fix_spaces("Example") == "Example"
# fix_spaces("Example 1") == "Example_1"
# fix_spaces(" Example 2") == "_Example_2"
# fix_spaces(" Example   3") == "_Example-3"
sub fix_spaces {
    my($text) = @_;
    $text =~ s/\s+/ /g;
    $text =~ s/\s+$//;
    $text =~ s/\s+/_/g;
    $text =~ s/\s+/ /g;
    return $text;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&fix_spaces;
        if(eq_deeply($candidate->("Example"),"Example")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Mudasir Hanif "),"Mudasir_Hanif_")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Yellow Yellow  Dirty  Fellow"),"Yellow_Yellow__Dirty__Fellow")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Exa   mple"),"Exa-mple")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("   Exa 1 2 2 mple"),"-Exa_1_2_2_mple")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# You are given a list of two strings, both strings consist of open
# parentheses '(' or close parentheses ')' only.
# Your job is to check if it is possible to concatenate the two strings in
# some order, that the resulting string will be good.
# A string S is considered to be good if and only if all parentheses in S
# are balanced. For example: the string '(())()' is good, while the string
# '())' is not.
# Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
# Examples:
# match_parens(['()(', ')']) == 'Yes'
# match_parens([')', ')']) == 'No'
sub match_parens {
    my($lst) = @_;
    my $l = scalar(@$lst);
    my $i = 0;
    my $j = $l - 1;
    while ($i < $j) {
        if ($lst->[$i] eq '(' && $lst->[$j] eq ')') {
            $i++;
            $j--;
        } elsif ($lst->[$i] eq '(' && $lst->[$j] eq '(') {
            $j--;
        } elsif ($lst->[$i] eq ')' && $lst->[$j] eq ')') {
            $i++;
        } else {
            return 'No';
        }
    }
    return 'Yes';
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&match_parens;
        if(eq_deeply($candidate->(["()(", ")"]),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([")", ")"]),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["(()(())", "())())"]),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([")())", "(()()("]),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["(())))", "(()())(("]),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["()", "())"]),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["(()(", "()))()"]),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["((((", "((())"]),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([")(()", "(()("]),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([")(", ")("]),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["(", ")"]),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([")", "("]),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
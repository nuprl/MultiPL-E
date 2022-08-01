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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&match_parens;
    my @arg0 = ("()(", ")");
    if(Compare($candidate->(\@arg0),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("()(", ")");
    my @arg1 = (")", ")");
    if(Compare($candidate->(\@arg1),"No")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("()(", ")");
    my @arg1 = (")", ")");
    my @arg2 = ("(()(())", "())())");
    if(Compare($candidate->(\@arg2),"No")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("()(", ")");
    my @arg1 = (")", ")");
    my @arg2 = ("(()(())", "())())");
    my @arg3 = (")())", "(()()(");
    if(Compare($candidate->(\@arg3),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("()(", ")");
    my @arg1 = (")", ")");
    my @arg2 = ("(()(())", "())())");
    my @arg3 = (")())", "(()()(");
    my @arg4 = ("(())))", "(()())((");
    if(Compare($candidate->(\@arg4),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("()(", ")");
    my @arg1 = (")", ")");
    my @arg2 = ("(()(())", "())())");
    my @arg3 = (")())", "(()()(");
    my @arg4 = ("(())))", "(()())((");
    my @arg5 = ("()", "())");
    if(Compare($candidate->(\@arg5),"No")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("()(", ")");
    my @arg1 = (")", ")");
    my @arg2 = ("(()(())", "())())");
    my @arg3 = (")())", "(()()(");
    my @arg4 = ("(())))", "(()())((");
    my @arg5 = ("()", "())");
    my @arg6 = ("(()(", "()))()");
    if(Compare($candidate->(\@arg6),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("()(", ")");
    my @arg1 = (")", ")");
    my @arg2 = ("(()(())", "())())");
    my @arg3 = (")())", "(()()(");
    my @arg4 = ("(())))", "(()())((");
    my @arg5 = ("()", "())");
    my @arg6 = ("(()(", "()))()");
    my @arg7 = ("((((", "((())");
    if(Compare($candidate->(\@arg7),"No")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("()(", ")");
    my @arg1 = (")", ")");
    my @arg2 = ("(()(())", "())())");
    my @arg3 = (")())", "(()()(");
    my @arg4 = ("(())))", "(()())((");
    my @arg5 = ("()", "())");
    my @arg6 = ("(()(", "()))()");
    my @arg7 = ("((((", "((())");
    my @arg8 = (")(()", "(()(");
    if(Compare($candidate->(\@arg8),"No")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("()(", ")");
    my @arg1 = (")", ")");
    my @arg2 = ("(()(())", "())())");
    my @arg3 = (")())", "(()()(");
    my @arg4 = ("(())))", "(()())((");
    my @arg5 = ("()", "())");
    my @arg6 = ("(()(", "()))()");
    my @arg7 = ("((((", "((())");
    my @arg8 = (")(()", "(()(");
    my @arg9 = (")(", ")(");
    if(Compare($candidate->(\@arg9),"No")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("()(", ")");
    my @arg1 = (")", ")");
    my @arg2 = ("(()(())", "())())");
    my @arg3 = (")())", "(()()(");
    my @arg4 = ("(())))", "(()())((");
    my @arg5 = ("()", "())");
    my @arg6 = ("(()(", "()))()");
    my @arg7 = ("((((", "((())");
    my @arg8 = (")(()", "(()(");
    my @arg9 = (")(", ")(");
    my @arg10 = ("(", ")");
    if(Compare($candidate->(\@arg10),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("()(", ")");
    my @arg1 = (")", ")");
    my @arg2 = ("(()(())", "())())");
    my @arg3 = (")())", "(()()(");
    my @arg4 = ("(())))", "(()())((");
    my @arg5 = ("()", "())");
    my @arg6 = ("(()(", "()))()");
    my @arg7 = ("((((", "((())");
    my @arg8 = (")(()", "(()(");
    my @arg9 = (")(", ")(");
    my @arg10 = ("(", ")");
    my @arg11 = (")", "(");
    if(Compare($candidate->(\@arg11),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
# separate those group into separate strings and return the list of those.
# Separate groups are balanced (each open brace is properly closed) and not nested within each other
# Ignore any spaces in the input string.
# >>> separate_paren_groups('( ) (( )) (( )( ))')
# ['()', '(())', '(()())']
sub separate_paren_groups {
    my($paren_string) = @_;
    my @paren_groups = ();
    my $paren_group = '';
    my $paren_count = 0;
    for my $char (split //, $paren_string) {
        if ($char eq '(') {
            $paren_count++;
            $paren_group .= $char;
        }
        elsif ($char eq ')') {
            $paren_count--;
            $paren_group .= $char;
        }
        if ($paren_count == 0) {
            push @paren_groups, $paren_group;
            $paren_group = '';
        }
    }
    return @paren_groups;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&separate_paren_groups;
    my @arg0 = ("(()())", "((()))", "()", "((())()())");
    if(Compare($candidate->("(()()) ((())) () ((())()())"),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("(()())", "((()))", "()", "((())()())");
    my @arg1 = ("()", "(())", "((()))", "(((())))");
    if(Compare($candidate->("() (()) ((())) (((())))"),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("(()())", "((()))", "()", "((())()())");
    my @arg1 = ("()", "(())", "((()))", "(((())))");
    my @arg2 = ("(()(())((())))");
    if(Compare($candidate->("(()(())((())))"),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("(()())", "((()))", "()", "((())()())");
    my @arg1 = ("()", "(())", "((()))", "(((())))");
    my @arg2 = ("(()(())((())))");
    my @arg3 = ("()", "(())", "(()())");
    if(Compare($candidate->("( ) (( )) (( )( ))"),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
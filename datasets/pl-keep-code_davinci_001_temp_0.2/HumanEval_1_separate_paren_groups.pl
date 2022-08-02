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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&separate_paren_groups;
        if(eq_deeply($candidate->("(()()) ((())) () ((())()())"),["(()())", "((()))", "()", "((())()())"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("() (()) ((())) (((())))"),["()", "(())", "((()))", "(((())))"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("(()(())((())))"),["(()(())((())))"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("( ) (( )) (( )( ))"),["()", "(())", "(()())"])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
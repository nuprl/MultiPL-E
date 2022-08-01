# Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
# For each of the group, output the deepest level of nesting of parentheses.
# E.g. (()()) has maximum two levels of nesting while ((())) has three.
# >>> parse_nested_parens('(()()) ((())) () ((())()())')
# [2, 3, 1, 3]
sub parse_nested_parens {
    my($paren_string) = @_;
    my @parens = split / /, $paren_string;
    my @result;
    foreach my $paren (@parens) {
        my $level = 0;
        my $max_level = 0;
        while ($paren =~ /\(/g) {
            $level++;
            $max_level = $level if $level > $max_level;
        }
        while ($paren =~ /\)/g) {
            $level--;
        }
        push @result, $max_level;
    }
    return @result;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&parse_nested_parens;
    my @arg0 = (2, 3, 1, 3);
    if(Compare($candidate->("(()()) ((())) () ((())()())"),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 1, 3);
    my @arg1 = (1, 2, 3, 4);
    if(Compare($candidate->("() (()) ((())) (((())))"),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 1, 3);
    my @arg1 = (1, 2, 3, 4);
    my @arg2 = (4);
    if(Compare($candidate->("(()(())((())))"),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
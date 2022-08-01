# Create a function that takes a string as input which contains only square brackets.
# The function should return True if and only if there is a valid subsequence of brackets 
# where at least one bracket in the subsequence is nested.
# is_nested('[[]]') ➞ True
# is_nested('[]]]]]]][[[[[]') ➞ False
# is_nested('[][]') ➞ False
# is_nested('[]') ➞ False
# is_nested('[[][]]') ➞ True
# is_nested('[[]][[') ➞ True
sub is_nested {
    my($string) = @_;
    my $stack = [];
    my $open = '{[(<';
    my $close = '}])>';
    my $open_to_close = {
        '{' => '}',
        '[' => ']',
        '(' => ')',
        '<' => '>',
    };
    my $close_to_open = {
        '}' => '{',
        ']' => '[',
        ')' => '(',
        '>' => '<',
    };
    for my $char (split //, $string) {
        if ($char ~~ $open) {
            push @$stack, $char;
        }
        elsif ($char ~~ $close) {
            my $top = pop @$stack;
            if ($top ne $close_to_open->{$char}) {
                return 0;
            }
        }
    }
    return @$stack == 0;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&is_nested;
        if(Compare($candidate->("[[]]"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("[]]]]]]][[[[[]"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("[][]"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("[]"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("[[[[]]]]"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("[]]]]]]]]]]"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("[][][[]]"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("[[]"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("[]]"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("[[]][["),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("[[][]]"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("[[[[[[[["),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("]]]]]]]]"),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
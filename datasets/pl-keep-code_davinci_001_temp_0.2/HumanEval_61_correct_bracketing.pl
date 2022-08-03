# brackets is a string of "(" and ")".
# return True if every opening bracket has a corresponding closing bracket.
# >>> correct_bracketing("(")
# False
# >>> correct_bracketing("()")
# True
# >>> correct_bracketing("(()())")
# True
# >>> correct_bracketing(")(()")
# False
sub correct_bracketing {
    my($brackets) = @_;
    my $count = 0;
    for (my $i = 0; $i < length($brackets); $i++) {
        my $char = substr($brackets, $i, 1);
        if ($char eq "(") {
            $count++;
        } elsif ($char eq ")") {
            $count--;
        }
        if ($count < 0) {
            return 0;
        }
    }
    return $count == 0;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&correct_bracketing;
        if(eq_deeply($candidate->("()"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("(()())"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("()()(()())()"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("()()((()()())())(()()(()))"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("((()())))"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(")(()"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("("),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("(((("),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(")"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("(()"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("()()(()())())(()"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("()()(()())()))()"),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
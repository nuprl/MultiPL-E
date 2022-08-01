# brackets is a string of "<" and ">".
# return True if every opening bracket has a corresponding closing bracket.
# >>> correct_bracketing("<")
# False
# >>> correct_bracketing("<>")
# True
# >>> correct_bracketing("<<><>>")
# True
# >>> correct_bracketing("><<>")
# False
sub correct_bracketing {
    my($brackets) = @_;
    my $stack = [];
    for my $bracket (split //, $brackets) {
        if ($bracket eq "<") {
            push @$stack, $bracket;
        } elsif ($bracket eq ">") {
            if (@$stack and $stack->[-1] eq "<") {
                pop @$stack;
            } else {
                return 0;
            }
        }
    }
    return @$stack == 0;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&correct_bracketing;
        if(Compare($candidate->("<>"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("<<><>>"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("<><><<><>><>"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("<><><<<><><>><>><<><><<>>>"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("<<<><>>>>"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("><<>"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("<"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("<<<<"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(">"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("<<>"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("<><><<><>><>><<>"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("<><><<><>><>>><>"),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
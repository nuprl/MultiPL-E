# Return a string containing space-delimited numbers starting from 0 upto n inclusive.
# >>> string_sequence(0)
# '0'
# >>> string_sequence(5)
# '0 1 2 3 4 5'
sub string_sequence {
    my($n) = @_;
    return join(" ", 0..$n);
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&string_sequence;
        if(eq_deeply($candidate->(0),"0")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(3),"0 1 2 3")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(10),"0 1 2 3 4 5 6 7 8 9 10")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
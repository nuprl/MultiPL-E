# Input are two strings a and b consisting only of 1s and 0s.
# Perform binary XOR on these inputs and return result also as a string.
# >>> string_xor('010', '110')
# '100'
sub string_xor {
    my($a, $b) = @_;
    my $r = '';
    for (my $i = 0; $i < length($a); $i++) {
        my $x = substr($a, $i, 1) ^ substr($b, $i, 1);
        $r .= $x;
    }
    return $r;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&string_xor;
        if(eq_deeply($candidate->("111000", "101010"),"010010")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("1", "1"),"0")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("0101", "0000"),"0101")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
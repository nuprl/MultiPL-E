# You will be given a number in decimal form and your task is to convert it to
# binary format. The function should return a string, with each character representing a binary
# number. Each character in the string will be '0' or '1'.
# There will be an extra couple of characters 'db' at the beginning and at the end of the string.
# The extra characters are there to help with the format.
# Examples:
# decimal_to_binary(15)   # returns "db1111db"
# decimal_to_binary(32)   # returns "db100000db"
sub decimal_to_binary {
    my($decimal) = @_;
    my $binary = '';
    my $remainder;
    while ($decimal > 0) {
        $remainder = $decimal % 2;
        $binary = $remainder . $binary;
        $decimal = int($decimal / 2);
    }
    return 'db' . $binary . 'db';
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&decimal_to_binary;
        if(eq_deeply($candidate->(0),"db0db")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(32),"db100000db")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(103),"db1100111db")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(15),"db1111db")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
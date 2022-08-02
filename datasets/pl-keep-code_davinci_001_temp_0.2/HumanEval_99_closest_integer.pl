# Create a function that takes a value (string) representing a number
# and returns the closest integer to it. If the number is equidistant
# from two integers, round it away from zero.
# Examples
# >>> closest_integer("10")
# 10
# >>> closest_integer("15.3")
# 15
# Note:
# Rounding away from zero means that if the given number is equidistant
# from two integers, the one you should return is the one that is the
# farthest from zero. For example closest_integer("14.5") should
# return 15 and closest_integer("-14.5") should return -15.
sub closest_integer {
    my($value) = @_;
    my $result = int($value + .5 * ($value <=> 0));
    return $result;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&closest_integer;
        if(eq_deeply($candidate->("10"),10)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("14.5"),15)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("-15.5"),-16)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("15.3"),15)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("0"),0)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
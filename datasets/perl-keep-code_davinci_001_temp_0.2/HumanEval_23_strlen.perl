# Return length of given string
# >>> strlen('')
# 0
# >>> strlen('abc')
# 3
sub strlen {
    my($string) = @_;
    return length($string);
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&strlen;
        if(eq_deeply($candidate->(""),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("x"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("asdasnakj"),9)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
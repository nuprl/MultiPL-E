# Return length of given string
# >>> strlen('')
# 0
# >>> strlen('abc')
# 3
sub strlen {
    my($string) = @_;
    return length($string);
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&strlen;
        if(Compare($candidate->(""),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("x"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("asdasnakj"),9)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
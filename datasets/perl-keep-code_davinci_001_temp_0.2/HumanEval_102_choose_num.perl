# This function takes two positive numbers x and y and returns the
# biggest even integer number that is in the range [x, y] inclusive. If 
# there's no such number, then the function should return -1.
# For example:
# choose_num(12, 15) = 14
# choose_num(13, 12) = -1
sub choose_num {
    my($x, $y) = @_;
    my $result = -1;
    while ($x <= $y) {
        if ($x % 2 == 0) {
            $result = $x;
            last;
        }
        $x++;
    }
    return $result;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&choose_num;
        if(Compare($candidate->(12, 15),14)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(13, 12),-1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(33, 12354),12354)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(5234, 5233),-1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(6, 29),28)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(27, 10),-1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(7, 7),-1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(546, 546),546)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
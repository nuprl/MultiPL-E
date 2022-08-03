# Change numerical base of input number x to base.
# return string representation after the conversion.
# base numbers are less than 10.
# >>> change_base(8, 3)
# '22'
# >>> change_base(8, 2)
# '1000'
# >>> change_base(7, 2)
# '111'
sub change_base {
    my($x, $base) = @_;
    my $result = '';
    while ($x > 0) {
        $result = $x % $base . $result;
        $x = int($x / $base);
    }
    return $result;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&change_base;
        if(eq_deeply($candidate->(8, 3),"22")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(9, 3),"100")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(234, 2),"11101010")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(16, 2),"10000")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(8, 2),"1000")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7, 2),"111")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(2, 3),"2")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(3, 4),"3")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(4, 5),"4")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(5, 6),"5")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(6, 7),"6")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(7, 8),"7")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
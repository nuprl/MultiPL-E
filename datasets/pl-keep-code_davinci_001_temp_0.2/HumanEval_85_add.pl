# Given a non-empty list of integers lst. add the even elements that are at odd indices..
# Examples:
# add([4, 2, 6, 7]) ==> 2
sub add {
    my($lst) = @_;
    my $sum = 0;
    for (my $i = 1; $i < @$lst; $i += 2) {
        $sum += $lst->[$i];
    }
    return $sum;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&add;
        if(eq_deeply($candidate->([4, 88]),88)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([4, 5, 6, 7, 2, 122]),122)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([4, 0, 6, 7]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([4, 4, 6, 8]),12)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
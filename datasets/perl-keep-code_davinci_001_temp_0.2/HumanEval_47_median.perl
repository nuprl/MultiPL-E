# Return median of elements in the list l.
# >>> median([3, 1, 2, 4, 5])
# 3
# >>> median([-10, 4, 6, 1000, 10, 20])
# 15.0
sub median {
    my($l) = @_;
    my $n = @$l;
    my $i = $n / 2;
    if($n % 2) {
        return $l->[$i];
    } else {
        return ($l->[$i-1] + $l->[$i]) / 2;
    }
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&median;
    my @arg0 = (3, 1, 2, 4, 5);
    if(Compare($candidate->(\@arg0),3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 1, 2, 4, 5);
    my @arg1 = (-10, 4, 6, 1000, 10, 20);
    if(Compare($candidate->(\@arg1),8.0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 1, 2, 4, 5);
    my @arg1 = (-10, 4, 6, 1000, 10, 20);
    my @arg2 = (5);
    if(Compare($candidate->(\@arg2),5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 1, 2, 4, 5);
    my @arg1 = (-10, 4, 6, 1000, 10, 20);
    my @arg2 = (5);
    my @arg3 = (6, 5);
    if(Compare($candidate->(\@arg3),5.5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (3, 1, 2, 4, 5);
    my @arg1 = (-10, 4, 6, 1000, 10, 20);
    my @arg2 = (5);
    my @arg3 = (6, 5);
    my @arg4 = (8, 1, 3, 9, 9, 2, 7);
    if(Compare($candidate->(\@arg4),7)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
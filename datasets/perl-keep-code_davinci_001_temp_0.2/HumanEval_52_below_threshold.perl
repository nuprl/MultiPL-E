# Return True if all numbers in the list l are below threshold t.
# >>> below_threshold([1, 2, 4, 10], 100)
# True
# >>> below_threshold([1, 20, 4, 10], 5)
# False
sub below_threshold {
    my($l, $t) = @_;
    my $i = 0;
    while ($i < @$l) {
        return 0 if $l->[$i] > $t;
        $i++;
    }
    return 1;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&below_threshold;
    my @arg0 = (1, 2, 4, 10);
    if(Compare($candidate->(\@arg0, 100),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 20, 4, 10);
    if(Compare($candidate->(\@arg1, 5),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 20, 4, 10);
    my @arg2 = (1, 20, 4, 10);
    if(Compare($candidate->(\@arg2, 21),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 20, 4, 10);
    my @arg2 = (1, 20, 4, 10);
    my @arg3 = (1, 20, 4, 10);
    if(Compare($candidate->(\@arg3, 22),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 20, 4, 10);
    my @arg2 = (1, 20, 4, 10);
    my @arg3 = (1, 20, 4, 10);
    my @arg4 = (1, 8, 4, 10);
    if(Compare($candidate->(\@arg4, 11),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 20, 4, 10);
    my @arg2 = (1, 20, 4, 10);
    my @arg3 = (1, 20, 4, 10);
    my @arg4 = (1, 8, 4, 10);
    my @arg5 = (1, 8, 4, 10);
    if(Compare($candidate->(\@arg5, 10),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
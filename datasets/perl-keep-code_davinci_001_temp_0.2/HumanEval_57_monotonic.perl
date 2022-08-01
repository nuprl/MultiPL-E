# Return True is list elements are monotonically increasing or decreasing.
# >>> monotonic([1, 2, 4, 20])
# True
# >>> monotonic([1, 20, 4, 10])
# False
# >>> monotonic([4, 1, 0, -10])
# True
sub monotonic {
    my($l) = @_;
    my $i = 0;
    my $mono = 1;
    while ($i < $#$l) {
        if ($l->[$i] > $l->[$i+1]) {
            $mono = 0;
            last;
        }
        $i++;
    }
    return $mono;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&monotonic;
    my @arg0 = (1, 2, 4, 10);
    if(Compare($candidate->(\@arg0),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 2, 4, 20);
    if(Compare($candidate->(\@arg1),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 2, 4, 20);
    my @arg2 = (1, 20, 4, 10);
    if(Compare($candidate->(\@arg2),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 2, 4, 20);
    my @arg2 = (1, 20, 4, 10);
    my @arg3 = (4, 1, 0, -10);
    if(Compare($candidate->(\@arg3),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 2, 4, 20);
    my @arg2 = (1, 20, 4, 10);
    my @arg3 = (4, 1, 0, -10);
    my @arg4 = (4, 1, 1, 0);
    if(Compare($candidate->(\@arg4),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 2, 4, 20);
    my @arg2 = (1, 20, 4, 10);
    my @arg3 = (4, 1, 0, -10);
    my @arg4 = (4, 1, 1, 0);
    my @arg5 = (1, 2, 3, 2, 5, 60);
    if(Compare($candidate->(\@arg5),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 2, 4, 20);
    my @arg2 = (1, 20, 4, 10);
    my @arg3 = (4, 1, 0, -10);
    my @arg4 = (4, 1, 1, 0);
    my @arg5 = (1, 2, 3, 2, 5, 60);
    my @arg6 = (1, 2, 3, 4, 5, 60);
    if(Compare($candidate->(\@arg6),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 4, 10);
    my @arg1 = (1, 2, 4, 20);
    my @arg2 = (1, 20, 4, 10);
    my @arg3 = (4, 1, 0, -10);
    my @arg4 = (4, 1, 1, 0);
    my @arg5 = (1, 2, 3, 2, 5, 60);
    my @arg6 = (1, 2, 3, 4, 5, 60);
    my @arg7 = (9, 9, 9, 9);
    if(Compare($candidate->(\@arg7),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
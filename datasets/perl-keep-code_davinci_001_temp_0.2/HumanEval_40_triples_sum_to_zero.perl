# triples_sum_to_zero takes a list of integers as an input.
# it returns True if there are three distinct elements in the list that
# sum to zero, and False otherwise.
# >>> triples_sum_to_zero([1, 3, 5, 0])
# False
# >>> triples_sum_to_zero([1, 3, -2, 1])
# True
# >>> triples_sum_to_zero([1, 2, 3, 7])
# False
# >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
# True
# >>> triples_sum_to_zero([1])
# False
sub triples_sum_to_zero {
    my($l) = @_;
    my %h;
    for my $i (@$l) {
        if ($h{$i}) {
            $h{$i}++;
        } else {
            $h{$i} = 1;
        }
    }
    my @a = sort {$a <=> $b} keys %h;
    for my $i (0..$#a) {
        for my $j ($i+1..$#a) {
            my $k = -($a[$i] + $a[$j]);
            if ($h{$k}) {
                return 1;
            }
        }
    }
    return 0;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&triples_sum_to_zero;
    my @arg0 = (1, 3, 5, 0);
    if(Compare($candidate->(\@arg0),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, 5, -1);
    if(Compare($candidate->(\@arg1),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, 5, -1);
    my @arg2 = (1, 3, -2, 1);
    if(Compare($candidate->(\@arg2),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, 5, -1);
    my @arg2 = (1, 3, -2, 1);
    my @arg3 = (1, 2, 3, 7);
    if(Compare($candidate->(\@arg3),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, 5, -1);
    my @arg2 = (1, 3, -2, 1);
    my @arg3 = (1, 2, 3, 7);
    my @arg4 = (1, 2, 5, 7);
    if(Compare($candidate->(\@arg4),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, 5, -1);
    my @arg2 = (1, 3, -2, 1);
    my @arg3 = (1, 2, 3, 7);
    my @arg4 = (1, 2, 5, 7);
    my @arg5 = (2, 4, -5, 3, 9, 7);
    if(Compare($candidate->(\@arg5),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, 5, -1);
    my @arg2 = (1, 3, -2, 1);
    my @arg3 = (1, 2, 3, 7);
    my @arg4 = (1, 2, 5, 7);
    my @arg5 = (2, 4, -5, 3, 9, 7);
    my @arg6 = (1);
    if(Compare($candidate->(\@arg6),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, 5, -1);
    my @arg2 = (1, 3, -2, 1);
    my @arg3 = (1, 2, 3, 7);
    my @arg4 = (1, 2, 5, 7);
    my @arg5 = (2, 4, -5, 3, 9, 7);
    my @arg6 = (1);
    my @arg7 = (1, 3, 5, -100);
    if(Compare($candidate->(\@arg7),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 3, 5, 0);
    my @arg1 = (1, 3, 5, -1);
    my @arg2 = (1, 3, -2, 1);
    my @arg3 = (1, 2, 3, 7);
    my @arg4 = (1, 2, 5, 7);
    my @arg5 = (2, 4, -5, 3, 9, 7);
    my @arg6 = (1);
    my @arg7 = (1, 3, 5, -100);
    my @arg8 = (100, 3, 5, -100);
    if(Compare($candidate->(\@arg8),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
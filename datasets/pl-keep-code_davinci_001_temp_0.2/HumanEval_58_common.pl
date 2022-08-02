# Return sorted unique common elements for two lists.
# >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
# [1, 5, 653]
# >>> common([5, 3, 2, 8], [3, 2])
# [2, 3]
sub common {
    my($l1, $l2) = @_;
    my %h1 = map { $_ => 1 } @$l1;
    my %h2 = map { $_ => 1 } @$l2;
    my @common = grep { $h1{$_} && $h2{$_} } keys %h1;
    return sort @common;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&common;
        if(eq_deeply($candidate->([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]),[1, 5, 653])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5, 3, 2, 8], [3, 2]),[2, 3])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([4, 3, 2, 8], [3, 2, 4]),[2, 3, 4])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([4, 3, 2, 8], []),[])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
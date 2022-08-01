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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&common;
    my @arg0 = (1, 4, 3, 34, 653, 2, 5);
    my @arg1 = (5, 7, 1, 5, 9, 653, 121);
    my @arg2 = (1, 5, 653);
    if(Compare($candidate->(\@arg0, \@arg1),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 4, 3, 34, 653, 2, 5);
    my @arg1 = (5, 7, 1, 5, 9, 653, 121);
    my @arg2 = (1, 5, 653);
    my @arg3 = (5, 3, 2, 8);
    my @arg4 = (3, 2);
    my @arg5 = (2, 3);
    if(Compare($candidate->(\@arg3, \@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 4, 3, 34, 653, 2, 5);
    my @arg1 = (5, 7, 1, 5, 9, 653, 121);
    my @arg2 = (1, 5, 653);
    my @arg3 = (5, 3, 2, 8);
    my @arg4 = (3, 2);
    my @arg5 = (2, 3);
    my @arg6 = (4, 3, 2, 8);
    my @arg7 = (3, 2, 4);
    my @arg8 = (2, 3, 4);
    if(Compare($candidate->(\@arg6, \@arg7),\@arg8)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 4, 3, 34, 653, 2, 5);
    my @arg1 = (5, 7, 1, 5, 9, 653, 121);
    my @arg2 = (1, 5, 653);
    my @arg3 = (5, 3, 2, 8);
    my @arg4 = (3, 2);
    my @arg5 = (2, 3);
    my @arg6 = (4, 3, 2, 8);
    my @arg7 = (3, 2, 4);
    my @arg8 = (2, 3, 4);
    my @arg9 = (4, 3, 2, 8);
    my @arg10 = ();
    my @arg11 = ();
    if(Compare($candidate->(\@arg9, \@arg10),\@arg11)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
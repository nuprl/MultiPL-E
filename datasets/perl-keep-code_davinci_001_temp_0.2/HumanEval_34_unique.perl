# Return sorted unique elements in a list
# >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [0, 2, 3, 5, 9, 123]
sub unique {
    my($l) = @_;
    my %h;
    @h{@$l} = ();
    return sort { $a <=> $b } keys %h;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&unique;
    my @arg0 = (5, 3, 5, 2, 3, 3, 9, 0, 123);
    my @arg1 = (0, 2, 3, 5, 9, 123);
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
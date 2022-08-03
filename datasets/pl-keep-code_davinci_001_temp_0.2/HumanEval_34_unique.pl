# Return sorted unique elements in a list
# >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [0, 2, 3, 5, 9, 123]
sub unique {
    my($l) = @_;
    my %h;
    @h{@$l} = ();
    return sort { $a <=> $b } keys %h;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&unique;
        if(eq_deeply($candidate->([5, 3, 5, 2, 3, 3, 9, 0, 123]),[0, 2, 3, 5, 9, 123])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# From a list of integers, remove all elements that occur more than once.
# Keep order of elements left the same as in the input.
# >>> remove_duplicates([1, 2, 3, 2, 4])
# [1, 3, 4]
sub remove_duplicates {
    my($numbers) = @_;
    my %seen;
    my @result;
    foreach my $number (@$numbers) {
        if (!exists $seen{$number}) {
            push @result, $number;
            $seen{$number} = 1;
        }
    }
    return \@result;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&remove_duplicates;
    my @arg0 = ();
    my @arg1 = ();
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (1, 2, 3, 4);
    my @arg3 = (1, 2, 3, 4);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (1, 2, 3, 4);
    my @arg3 = (1, 2, 3, 4);
    my @arg4 = (1, 2, 3, 2, 4, 3, 5);
    my @arg5 = (1, 4, 5);
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
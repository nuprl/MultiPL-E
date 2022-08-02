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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&remove_duplicates;
        if(eq_deeply($candidate->([]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 4]),[1, 2, 3, 4])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, 2, 3, 2, 4, 3, 5]),[1, 4, 5])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
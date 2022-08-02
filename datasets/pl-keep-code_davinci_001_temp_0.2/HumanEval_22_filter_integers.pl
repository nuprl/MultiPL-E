# Filter given list of any python values only for integers
# >>> filter_integers(['a', 3.14, 5])
# [5]
# >>> filter_integers([1, 2, 3, 'abc', {}, []])
# [1, 2, 3]
sub filter_integers {
    my($values) = @_;
    my @result;
    for my $value (@$values) {
        push @result, $value if $value =~ /^-?\d+$/;
    }
    return @result;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&filter_integers;
        if(eq_deeply($candidate->([]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([4, {}, [], 23.2, 9, "adasd"]),[4, 9])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([3, "c", 3, 3, "a", "b"]),[3, 3, 3])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
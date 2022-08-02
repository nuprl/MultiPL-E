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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&filter_integers;
    my @arg0 = ();
    my @arg1 = ();
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ();
    my @arg3 = (4, (,), \@arg2, 23.2, 9, "adasd");
    my @arg4 = (4, 9);
    if(Compare($candidate->(\@arg3),\@arg4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ();
    my @arg3 = (4, (,), \@arg2, 23.2, 9, "adasd");
    my @arg4 = (4, 9);
    my @arg5 = (3, "c", 3, 3, "a", "b");
    my @arg6 = (3, 3, 3);
    if(Compare($candidate->(\@arg5),\@arg6)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
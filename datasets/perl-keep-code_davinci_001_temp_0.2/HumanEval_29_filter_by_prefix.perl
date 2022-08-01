# Filter an input list of strings only for ones that start with a given prefix.
# >>> filter_by_prefix([], 'a')
# []
# >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
# ['abc', 'array']
sub filter_by_prefix {
    my($strings, $prefix) = @_;
    return grep { $_ =~ /^$prefix/ } @$strings;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&filter_by_prefix;
    my @arg0 = ();
    my @arg1 = ();
    if(Compare($candidate->(\@arg0, "john"),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ("xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx");
    my @arg3 = ("xxx", "xxxAAA", "xxx");
    if(Compare($candidate->(\@arg2, "xxx"),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
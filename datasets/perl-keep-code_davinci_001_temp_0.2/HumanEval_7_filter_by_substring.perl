# Filter an input list of strings only for ones that contain given substring
# >>> filter_by_substring([], 'a')
# []
# >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
# ['abc', 'bacd', 'array']
sub filter_by_substring {
    my($strings, $substring) = @_;
    return grep { $_ =~ /$substring/ } @$strings;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&filter_by_substring;
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
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ("xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx");
    my @arg3 = ("xxx", "xxxAAA", "xxx");
    my @arg4 = ("xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx");
    my @arg5 = ("xxx", "aaaxxy", "xxxAAA", "xxx");
    if(Compare($candidate->(\@arg4, "xx"),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ("xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx");
    my @arg3 = ("xxx", "xxxAAA", "xxx");
    my @arg4 = ("xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx");
    my @arg5 = ("xxx", "aaaxxy", "xxxAAA", "xxx");
    my @arg6 = ("grunt", "trumpet", "prune", "gruesome");
    my @arg7 = ("grunt", "prune");
    if(Compare($candidate->(\@arg6, "run"),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
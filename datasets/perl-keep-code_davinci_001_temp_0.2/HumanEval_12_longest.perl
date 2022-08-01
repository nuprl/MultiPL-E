# Out of list of strings, return the longest one. Return the first one in case of multiple
# strings of the same length. Return None in case the input list is empty.
# >>> longest([])
# >>> longest(['a', 'b', 'c'])
# 'a'
# >>> longest(['a', 'bb', 'ccc'])
# 'ccc'
sub longest {
    my($strings) = @_;
    my($longest);
    foreach my $string (@$strings) {
        if (!defined($longest) || length($string) > length($longest)) {
            $longest = $string;
        }
    }
    return $longest;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&longest;
    my @arg0 = ();
    if(Compare($candidate->(\@arg0),#f)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ("x", "y", "z");
    if(Compare($candidate->(\@arg1),"x")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ("x", "y", "z");
    my @arg2 = ("x", "yyy", "zzzz", "www", "kkkk", "abc");
    if(Compare($candidate->(\@arg2),"zzzz")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
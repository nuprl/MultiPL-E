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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&longest;
        if(eq_deeply($candidate->([]),undef)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["x", "y", "z"]),"x")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["x", "yyy", "zzzz", "www", "kkkk", "abc"]),"zzzz")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
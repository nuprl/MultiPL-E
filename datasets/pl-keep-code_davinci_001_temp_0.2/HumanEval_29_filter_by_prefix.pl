# Filter an input list of strings only for ones that start with a given prefix.
# >>> filter_by_prefix([], 'a')
# []
# >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
# ['abc', 'array']
sub filter_by_prefix {
    my($strings, $prefix) = @_;
    return grep { $_ =~ /^$prefix/ } @$strings;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&filter_by_prefix;
        if(eq_deeply($candidate->([], "john"),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx"),["xxx", "xxxAAA", "xxx"])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
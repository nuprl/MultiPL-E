# Filter an input list of strings only for ones that contain given substring
# >>> filter_by_substring([], 'a')
# []
# >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
# ['abc', 'bacd', 'array']
sub filter_by_substring {
    my($strings, $substring) = @_;
    return grep { $_ =~ /$substring/ } @$strings;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&filter_by_substring;
        if(eq_deeply($candidate->([], "john"),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], "xxx"),["xxx", "xxxAAA", "xxx"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"], "xx"),["xxx", "aaaxxy", "xxxAAA", "xxx"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["grunt", "trumpet", "prune", "gruesome"], "run"),["grunt", "prune"])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
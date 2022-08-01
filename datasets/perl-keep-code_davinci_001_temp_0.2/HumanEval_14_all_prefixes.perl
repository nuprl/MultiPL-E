# Return list of all prefixes from shortest to longest of the input string
# >>> all_prefixes('abc')
# ['a', 'ab', 'abc']
sub all_prefixes {
    my($string) = @_;
    my @prefixes = ();
    my $prefix = '';
    foreach my $char (split //, $string) {
        $prefix .= $char;
        push @prefixes, $prefix;
    }
    return @prefixes;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&all_prefixes;
    my @arg0 = ();
    if(Compare($candidate->(""),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ("a", "as", "asd", "asdf", "asdfg", "asdfgh");
    if(Compare($candidate->("asdfgh"),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ("a", "as", "asd", "asdf", "asdfg", "asdfgh");
    my @arg2 = ("W", "WW", "WWW");
    if(Compare($candidate->("WWW"),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
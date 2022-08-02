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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&all_prefixes;
        if(eq_deeply($candidate->(""),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("asdfgh"),["a", "as", "asd", "asdf", "asdfg", "asdfgh"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("WWW"),["W", "WW", "WWW"])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Concatenate list of strings into a single string
# >>> concatenate([])
# ''
# >>> concatenate(['a', 'b', 'c'])
# 'abc'
sub concatenate {
    my($strings) = @_;
    my $result = '';
    foreach my $string (@$strings) {
        $result .= $string;
    }
    return $result;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&concatenate;
    my @arg0 = ();
    if(Compare($candidate->(\@arg0),"")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ("x", "y", "z");
    if(Compare($candidate->(\@arg1),"xyz")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ("x", "y", "z");
    my @arg2 = ("x", "y", "z", "w", "k");
    if(Compare($candidate->(\@arg2),"xyzwk")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
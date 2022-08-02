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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&concatenate;
        if(eq_deeply($candidate->([]),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["x", "y", "z"]),"xyz")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["x", "y", "z", "w", "k"]),"xyzwk")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
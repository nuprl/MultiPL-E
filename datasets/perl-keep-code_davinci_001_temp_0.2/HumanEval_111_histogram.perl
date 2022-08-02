# Given a string representing a space separated lowercase letters, return a dictionary
# of the letter with the most repetition and containing the corresponding count.
# If several letters have the same occurrence, return all of them.
# Example:
# histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
# histogram('a b b a') == {'a': 2, 'b': 2}
# histogram('a b c a b') == {'a': 2, 'b': 2}
# histogram('b b b b a') == {'b': 4}
# histogram('') == {}
sub histogram {
    my($test) = @_;
    my %hash;
    my @arr = split(' ', $test);
    foreach my $i (@arr) {
        if (exists $hash{$i}) {
            $hash{$i}++;
        } else {
            $hash{$i} = 1;
        }
    }
    return %hash;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&histogram;
        if(eq_deeply($candidate->("a b b a"),{"a" => 2, "b" => 2})) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("a b c a b"),{"a" => 2, "b" => 2})) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("a b c d g"),{"a" => 1, "b" => 1, "c" => 1, "d" => 1, "g" => 1})) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("r t g"),{"r" => 1, "t" => 1, "g" => 1})) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("b b b b a"),{"b" => 4})) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("r t g"),{"r" => 1, "t" => 1, "g" => 1})) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(""),{})) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("a"),{"a" => 1})) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
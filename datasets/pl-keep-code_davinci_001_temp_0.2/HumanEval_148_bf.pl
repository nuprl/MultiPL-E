# There are eight planets in our solar system: the closerst to the Sun 
# is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn, 
# Uranus, Neptune.
# Write a function that takes two planet names as strings planet1 and planet2. 
# The function should return a tuple containing all planets whose orbits are 
# located between the orbit of planet1 and the orbit of planet2, sorted by 
# the proximity to the sun. 
# The function should return an empty tuple if planet1 or planet2
# are not correct planet names. 
# Examples
# bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
# bf("Earth", "Mercury") ==> ("Venus")
# bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
sub bf {
    my($planet1, $planet2) = @_;
    my %planets = (
        Mercury => 0.39,
        Venus => 0.72,
        Earth => 1,
        Mars => 1.52,
        Jupiter => 5.20,
        Saturn => 9.58,
        Uranus => 19.20,
        Neptune => 30.05,
    );
    my @result;
    if (exists $planets{$planet1} && exists $planets{$planet2}) {
        my $min = $planets{$planet1};
        my $max = $planets{$planet2};
        for my $planet (keys %planets) {
            if ($planets{$planet} > $min && $planets{$planet} < $max) {
                push @result, $planet;
            }
        }
    }
    return @result;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&bf;
        if(eq_deeply($candidate->("Jupiter", "Neptune"),["Saturn", "Uranus"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Earth", "Mercury"),["Venus"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Mercury", "Uranus"),["Venus", "Earth", "Mars", "Jupiter", "Saturn"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Neptune", "Venus"),["Earth", "Mars", "Jupiter", "Saturn", "Uranus"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Earth", "Earth"),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Mars", "Earth"),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Jupiter", "Makemake"),[])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
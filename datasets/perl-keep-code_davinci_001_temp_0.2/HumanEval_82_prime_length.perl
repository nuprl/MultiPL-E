# Write a function that takes a string and returns True if the string
# length is a prime number or False otherwise
# Examples
# prime_length('Hello') == True
# prime_length('abcdcba') == True
# prime_length('kittens') == True
# prime_length('orange') == False
sub prime_length {
    my($string) = @_;
    my $length = length($string);
    my $i = 2;
    while ($i < $length) {
        if ($length % $i == 0) {
            return 0;
        }
        $i++;
    }
    return 1;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&prime_length;
        if(eq_deeply($candidate->("Hello"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("abcdcba"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("kittens"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("orange"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("wow"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("world"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("MadaM"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Wow"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("HI"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("go"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("gogo"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("aaaaaaaaaaaaaaa"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Madam"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("M"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("0"),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
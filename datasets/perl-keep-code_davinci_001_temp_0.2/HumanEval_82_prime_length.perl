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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&prime_length;
        if(Compare($candidate->("Hello"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("abcdcba"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("kittens"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("orange"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("wow"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("world"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("MadaM"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("Wow"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("HI"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("go"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("gogo"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("aaaaaaaaaaaaaaa"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("Madam"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("M"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("0"),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
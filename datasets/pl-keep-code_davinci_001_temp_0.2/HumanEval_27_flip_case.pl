# For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
# >>> flip_case('Hello')
# 'hELLO'
sub flip_case {
    my($string) = @_;
    $string =~ tr/a-zA-Z/A-Za-z/;
    return $string;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&flip_case;
        if(eq_deeply($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Hello!"),"hELLO!")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("These violent delights have violent ends"),"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
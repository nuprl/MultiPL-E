# You will be given a string of words separated by commas or spaces. Your task is
# to split the string into words and return an array of the words.
# For example:
# words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
# words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
sub words_string {
    my($s) = @_;
    my @a = split(/[,\s]+/, $s);
    return @a;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&words_string;
        if(eq_deeply($candidate->("Hi, my name is John"),["Hi", "my", "name", "is", "John"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("One, two, three, four, five, six"),["One", "two", "three", "four", "five", "six"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("Hi, my name"),["Hi", "my", "name"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("One,, two, three, four, five, six,"),["One", "two", "three", "four", "five", "six"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(""),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("ahmed     , gamal"),["ahmed", "gamal"])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
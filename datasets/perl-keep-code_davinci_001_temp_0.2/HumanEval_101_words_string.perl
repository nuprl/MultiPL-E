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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&words_string;
    my @arg0 = ("Hi", "my", "name", "is", "John");
    if(Compare($candidate->("Hi, my name is John"),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hi", "my", "name", "is", "John");
    my @arg1 = ("One", "two", "three", "four", "five", "six");
    if(Compare($candidate->("One, two, three, four, five, six"),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hi", "my", "name", "is", "John");
    my @arg1 = ("One", "two", "three", "four", "five", "six");
    my @arg2 = ("Hi", "my", "name");
    if(Compare($candidate->("Hi, my name"),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hi", "my", "name", "is", "John");
    my @arg1 = ("One", "two", "three", "four", "five", "six");
    my @arg2 = ("Hi", "my", "name");
    my @arg3 = ("One", "two", "three", "four", "five", "six");
    if(Compare($candidate->("One,, two, three, four, five, six,"),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hi", "my", "name", "is", "John");
    my @arg1 = ("One", "two", "three", "four", "five", "six");
    my @arg2 = ("Hi", "my", "name");
    my @arg3 = ("One", "two", "three", "four", "five", "six");
    my @arg4 = ();
    if(Compare($candidate->(""),\@arg4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("Hi", "my", "name", "is", "John");
    my @arg1 = ("One", "two", "three", "four", "five", "six");
    my @arg2 = ("Hi", "my", "name");
    my @arg3 = ("One", "two", "three", "four", "five", "six");
    my @arg4 = ();
    my @arg5 = ("ahmed", "gamal");
    if(Compare($candidate->("ahmed     , gamal"),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
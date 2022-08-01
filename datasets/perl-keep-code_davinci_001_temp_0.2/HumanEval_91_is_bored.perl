# You'll be given a string of words, and your task is to count the number
# of boredoms. A boredom is a sentence that starts with the word "I".
# Sentences are delimited by '.', '?' or '!'.
# For example:
# >>> is_bored("Hello world")
# 0
# >>> is_bored("The sky is blue. The sun is shining. I love this weather")
# 1
sub is_bored {
    my($S) = @_;
    my $count = 0;
    my @words = split /\s+/, $S;
    for my $word (@words) {
        if ($word eq 'I') {
            $count++;
        }
    }
    return $count;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&is_bored;
        if(Compare($candidate->("Hello world"),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("Is the sky blue?"),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("I love It !"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("bIt"),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("I feel good today. I will be productive. will kill It"),2)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("You and I are going for a walk"),0)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
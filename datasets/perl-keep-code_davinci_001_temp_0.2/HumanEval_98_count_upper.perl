# Given a string s, count the number of uppercase vowels in even indices.
# For example:
# count_upper('aBCdEf') returns 1
# count_upper('abcdefg') returns 0
# count_upper('dBBE') returns 0
sub count_upper {
    my($s) = @_;
    my $count = 0;
    for (my $i = 0; $i < length($s); $i += 2) {
        my $c = substr($s, $i, 1);
        if ($c eq 'A' || $c eq 'E' || $c eq 'I' || $c eq 'O' || $c eq 'U') {
            $count++;
        }
    }
    return $count;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&count_upper;
        if(eq_deeply($candidate->("aBCdEf"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("abcdefg"),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("dBBE"),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("B"),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("U"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(""),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("EEEE"),2)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
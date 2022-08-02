# Find how many times a given substring can be found in the original string. Count overlaping cases.
# >>> how_many_times('', 'a')
# 0
# >>> how_many_times('aaa', 'a')
# 3
# >>> how_many_times('aaaa', 'aa')
# 3
sub how_many_times {
    my($string, $substring) = @_;
    my $count = 0;
    while ($string =~ /$substring/g) {
        $count++;
    }
    return $count;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&how_many_times;
        if(Compare($candidate->("", "x"),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("xyxyxyx", "x"),4)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("cacacacac", "cac"),4)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("john doe", "john"),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
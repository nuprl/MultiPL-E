# You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
# cycpattern_check("abcd","abd") => False
# cycpattern_check("hello","ell") => True
# cycpattern_check("whassup","psus") => False
# cycpattern_check("abab","baa") => True
# cycpattern_check("efef","eeff") => False
# cycpattern_check("himenss","simen") => True
sub cycpattern_check {
    my($a, $b) = @_;
    my $len = length($a);
    my $i = 0;
    while($i < $len) {
        my $j = $i;
        while($j < $len && $a[$j] eq $a[$i]) {
            $j++;
        }
        if($j - $i == length($b)) {
            my $k = 0;
            while($k < $j - $i) {
                if($a[$i + $k] ne $b[$k]) {
                    last;
                }
                $k++;
            }
            if($k == $j - $i) {
                return 1;
            }
        }
        $i = $j;
    }
    return 0;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&cycpattern_check;
        if(Compare($candidate->("xyzw", "xyw"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("yello", "ell"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("whattup", "ptut"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("efef", "fee"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("abab", "aabb"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("winemtt", "tinem"),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
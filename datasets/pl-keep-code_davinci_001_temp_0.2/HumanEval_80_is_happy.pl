# You are given a string s.
# Your task is to check if the string is happy or not.
# A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
# For example:
# is_happy(a) => False
# is_happy(aa) => False
# is_happy(abcd) => True
# is_happy(aabb) => False
# is_happy(adb) => True
# is_happy(xyy) => False
sub is_happy {
    my($s) = @_;
    my $len = length($s);
    my $i = 0;
    my $j = 0;
    my $count = 0;
    my $flag = 0;
    while($i < $len) {
        $j = $i + 1;
        while($j < $len) {
            if($s[$i] eq $s[$j]) {
                $count++;
                if($count > 2) {
                    $flag = 1;
                    last;
                }
            }
            $j++;
        }
        if($flag == 1) {
            last;
        }
        $i++;
    }
    if($flag == 1) {
        return 0;
    }
    return 1;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&is_happy;
        if(eq_deeply($candidate->("a"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("aa"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("abcd"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("aabb"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("adb"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("xyy"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("iopaxpoi"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("iopaxioi"),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
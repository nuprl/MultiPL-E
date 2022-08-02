# You're a hungry rabbit, and you already have eaten a certain number of carrots,
# but now you need to eat more carrots to complete the day's meals.
# you should return an array of [ total number of eaten carrots after your meals,
# the number of carrots left after your meals ]
# if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
# Example:
# * eat(5, 6, 10) -> [11, 4]
# * eat(4, 8, 9) -> [12, 1]
# * eat(1, 10, 10) -> [11, 0]
# * eat(2, 11, 5) -> [7, 0]
# Variables:
# @number : integer
# the number of carrots that you have eaten.
# @need : integer
# the number of carrots that you need to eat.
# @remaining : integer
# the number of remaining carrots thet exist in stock
# Constrain:
# * 0 <= number <= 1000
# * 0 <= need <= 1000
# * 0 <= remaining <= 1000
# Have fun :)
sub eat {
    my($number, $need, $remaining) = @_;
    my $eaten = $number + $remaining - $need;
    if ($eaten < 0) {
        $eaten = 0;
    }
    return [$eaten, $remaining - $eaten];
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&eat;
    my @arg0 = (11, 4);
    if(Compare($candidate->(5, 6, 10),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (11, 4);
    my @arg1 = (12, 1);
    if(Compare($candidate->(4, 8, 9),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (11, 4);
    my @arg1 = (12, 1);
    my @arg2 = (11, 0);
    if(Compare($candidate->(1, 10, 10),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (11, 4);
    my @arg1 = (12, 1);
    my @arg2 = (11, 0);
    my @arg3 = (7, 0);
    if(Compare($candidate->(2, 11, 5),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (11, 4);
    my @arg1 = (12, 1);
    my @arg2 = (11, 0);
    my @arg3 = (7, 0);
    my @arg4 = (9, 2);
    if(Compare($candidate->(4, 5, 7),\@arg4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (11, 4);
    my @arg1 = (12, 1);
    my @arg2 = (11, 0);
    my @arg3 = (7, 0);
    my @arg4 = (9, 2);
    my @arg5 = (5, 0);
    if(Compare($candidate->(4, 5, 1),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
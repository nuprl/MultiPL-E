# Given a non-empty list of integers lst. add the even elements that are at odd indices..
# Examples:
# add([4, 2, 6, 7]) ==> 2
sub add {
    my($lst) = @_;
    my $sum = 0;
    for (my $i = 1; $i < @$lst; $i += 2) {
        $sum += $lst->[$i];
    }
    return $sum;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&add;
    my @arg0 = (4, 88);
    if(Compare($candidate->(\@arg0),88)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4, 88);
    my @arg1 = (4, 5, 6, 7, 2, 122);
    if(Compare($candidate->(\@arg1),122)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4, 88);
    my @arg1 = (4, 5, 6, 7, 2, 122);
    my @arg2 = (4, 0, 6, 7);
    if(Compare($candidate->(\@arg2),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4, 88);
    my @arg1 = (4, 5, 6, 7, 2, 122);
    my @arg2 = (4, 0, 6, 7);
    my @arg3 = (4, 4, 6, 8);
    if(Compare($candidate->(\@arg3),12)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
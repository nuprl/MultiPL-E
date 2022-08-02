# Write a function that takes an array of numbers as input and returns 
# the number of elements in the array that are greater than 10 and both 
# first and last digits of a number are odd (1, 3, 5, 7, 9).
# For example:
# specialFilter([15, -73, 14, -15]) => 1 
# specialFilter([33, -2, -3, 45, 21, 109]) => 2
sub specialFilter {
    my($nums) = @_;
    my $count = 0;
    for my $n (@$nums) {
        if ($n > 10 && $n % 10 % 2 == 1 && $n / 10 % 10 % 2 == 1) {
            $count++;
        }
    }
    return $count;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&specialFilter;
    my @arg0 = (5, -2, 1, -5);
    if(Compare($candidate->(\@arg0),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, -2, 1, -5);
    my @arg1 = (15, -73, 14, -15);
    if(Compare($candidate->(\@arg1),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, -2, 1, -5);
    my @arg1 = (15, -73, 14, -15);
    my @arg2 = (33, -2, -3, 45, 21, 109);
    if(Compare($candidate->(\@arg2),2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, -2, 1, -5);
    my @arg1 = (15, -73, 14, -15);
    my @arg2 = (33, -2, -3, 45, 21, 109);
    my @arg3 = (43, -12, 93, 125, 121, 109);
    if(Compare($candidate->(\@arg3),4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, -2, 1, -5);
    my @arg1 = (15, -73, 14, -15);
    my @arg2 = (33, -2, -3, 45, 21, 109);
    my @arg3 = (43, -12, 93, 125, 121, 109);
    my @arg4 = (71, -2, -33, 75, 21, 19);
    if(Compare($candidate->(\@arg4),3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, -2, 1, -5);
    my @arg1 = (15, -73, 14, -15);
    my @arg2 = (33, -2, -3, 45, 21, 109);
    my @arg3 = (43, -12, 93, 125, 121, 109);
    my @arg4 = (71, -2, -33, 75, 21, 19);
    my @arg5 = (1);
    if(Compare($candidate->(\@arg5),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (5, -2, 1, -5);
    my @arg1 = (15, -73, 14, -15);
    my @arg2 = (33, -2, -3, 45, 21, 109);
    my @arg3 = (43, -12, 93, 125, 121, 109);
    my @arg4 = (71, -2, -33, 75, 21, 19);
    my @arg5 = (1);
    my @arg6 = ();
    if(Compare($candidate->(\@arg6),0)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
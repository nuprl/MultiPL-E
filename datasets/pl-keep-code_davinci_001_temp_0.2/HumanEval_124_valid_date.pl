# You have to write a function which validates a given date string and
# returns True if the date is valid otherwise False.
# The date is valid if all of the following rules are satisfied:
# 1. The date string is not empty.
# 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
# 3. The months should not be less than 1 or higher than 12.
# 4. The date should be in the format: mm-dd-yyyy
# for example: 
# valid_date('03-11-2000') => True
# valid_date('15-01-2012') => False
# valid_date('04-0-2040') => False
# valid_date('06-04-2020') => True
# valid_date('06/04/2020') => False
sub valid_date {
    my($date) = @_;
    my($month, $day, $year) = split /-/, $date;
    my $days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    if ($month < 1 || $month > 12 || $day < 1 || $day > $days_in_month->[$month - 1] || $year < 1 || $year > 9999) {
        return 0;
    }
    return 1;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&valid_date;
        if(eq_deeply($candidate->("03-11-2000"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("15-01-2012"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("04-0-2040"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("06-04-2020"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("01-01-2007"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("03-32-2011"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("04-31-3000"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("06-06-2005"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("21-31-2000"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("04-12-2003"),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("04122003"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("20030412"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("2003-04"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("2003-04-12"),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("04-2003"),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Input is a space-delimited string of numberals from 'zero' to 'nine'.
# Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
# Return the string with numbers sorted from smallest to largest
# >>> sort_numbers('three one five')
# 'one three five'
sub sort_numbers {
    my($numbers) = @_;
    my @numbers = split(' ', $numbers);
    my @sorted = sort { $a <=> $b } @numbers;
    my $sorted = join(' ', @sorted);
    return $sorted;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&sort_numbers;
        if(eq_deeply($candidate->(""),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("three"),"three")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("three five nine"),"three five nine")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("five zero four seven nine eight"),"zero four five seven eight nine")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->("six five four three two one zero"),"zero one two three four five six")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
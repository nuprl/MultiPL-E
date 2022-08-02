# I think we all remember that feeling when the result of some long-awaited
# event is finally known. The feelings and thoughts you have at that moment are
# definitely worth noting down and comparing.
# Your task is to determine if a person correctly guessed the results of a number of matches.
# You are given two arrays of scores and guesses of equal length, where each index shows a match. 
# Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
# the value is 0, and if not, the value is the absolute difference between the guess and the score.
# example:
# compare([1,2,3,4,5,1],[1,2,3,4,2,-2]) -> [0,0,0,0,3,3]
# compare([0,5,0,0,0,4],[4,1,1,0,0,-2]) -> [4,4,1,0,0,6]
sub compare {
    my($game, $guess) = @_;
    my @result;
    for (0..$#$game) {
        $result[$_] = abs($game->[$_] - $guess->[$_]);
    }
    return @result;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&compare;
    my @arg0 = (1, 2, 3, 4, 5, 1);
    my @arg1 = (1, 2, 3, 4, 2, -2);
    my @arg2 = (0, 0, 0, 0, 3, 3);
    if(Compare($candidate->(\@arg0, \@arg1),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4, 5, 1);
    my @arg1 = (1, 2, 3, 4, 2, -2);
    my @arg2 = (0, 0, 0, 0, 3, 3);
    my @arg3 = (0, 0, 0, 0, 0, 0);
    my @arg4 = (0, 0, 0, 0, 0, 0);
    my @arg5 = (0, 0, 0, 0, 0, 0);
    if(Compare($candidate->(\@arg3, \@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4, 5, 1);
    my @arg1 = (1, 2, 3, 4, 2, -2);
    my @arg2 = (0, 0, 0, 0, 3, 3);
    my @arg3 = (0, 0, 0, 0, 0, 0);
    my @arg4 = (0, 0, 0, 0, 0, 0);
    my @arg5 = (0, 0, 0, 0, 0, 0);
    my @arg6 = (1, 2, 3);
    my @arg7 = (-1, -2, -3);
    my @arg8 = (2, 4, 6);
    if(Compare($candidate->(\@arg6, \@arg7),\@arg8)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 2, 3, 4, 5, 1);
    my @arg1 = (1, 2, 3, 4, 2, -2);
    my @arg2 = (0, 0, 0, 0, 3, 3);
    my @arg3 = (0, 0, 0, 0, 0, 0);
    my @arg4 = (0, 0, 0, 0, 0, 0);
    my @arg5 = (0, 0, 0, 0, 0, 0);
    my @arg6 = (1, 2, 3);
    my @arg7 = (-1, -2, -3);
    my @arg8 = (2, 4, 6);
    my @arg9 = (1, 2, 3, 5);
    my @arg10 = (-1, 2, 3, 4);
    my @arg11 = (2, 0, 0, 1);
    if(Compare($candidate->(\@arg9, \@arg10),\@arg11)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
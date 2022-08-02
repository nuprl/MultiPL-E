# Write a function that accepts two lists of strings and returns the list that has 
# total number of chars in the all strings of the list less than the other list.
# if the two lists have the same number of chars, return the first list.
# Examples
# total_match([], []) ➞ []
# total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
# total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
# total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
# total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
sub total_match {
    my($lst1, $lst2) = @_;
    my $sum1 = 0;
    my $sum2 = 0;
    foreach my $str (@$lst1) {
        $sum1 += length($str);
    }
    foreach my $str (@$lst2) {
        $sum2 += length($str);
    }
    if ($sum1 < $sum2) {
        return $lst1;
    } elsif ($sum1 > $sum2) {
        return $lst2;
    } else {
        return $lst1;
    }
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&total_match;
        if(eq_deeply($candidate->([], []),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["hi", "admin"], ["hi", "hi"]),["hi", "hi"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["hi", "admin"], ["hi", "hi", "admin", "project"]),["hi", "admin"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["4"], ["1", "2", "3", "4", "5"]),["4"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["hi", "admin"], ["hI", "Hi"]),["hI", "Hi"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["hi", "admin"], ["hI", "hi", "hi"]),["hI", "hi", "hi"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["hi", "admin"], ["hI", "hi", "hii"]),["hi", "admin"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([], ["this"]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["this"], []),[])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&total_match;
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ();
    if(Compare($candidate->(\@arg0, \@arg1),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ();
    my @arg3 = ("hi", "admin");
    my @arg4 = ("hi", "hi");
    my @arg5 = ("hi", "hi");
    if(Compare($candidate->(\@arg3, \@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ();
    my @arg3 = ("hi", "admin");
    my @arg4 = ("hi", "hi");
    my @arg5 = ("hi", "hi");
    my @arg6 = ("hi", "admin");
    my @arg7 = ("hi", "hi", "admin", "project");
    my @arg8 = ("hi", "admin");
    if(Compare($candidate->(\@arg6, \@arg7),\@arg8)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ();
    my @arg3 = ("hi", "admin");
    my @arg4 = ("hi", "hi");
    my @arg5 = ("hi", "hi");
    my @arg6 = ("hi", "admin");
    my @arg7 = ("hi", "hi", "admin", "project");
    my @arg8 = ("hi", "admin");
    my @arg9 = ("4");
    my @arg10 = ("1", "2", "3", "4", "5");
    my @arg11 = ("4");
    if(Compare($candidate->(\@arg9, \@arg10),\@arg11)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ();
    my @arg3 = ("hi", "admin");
    my @arg4 = ("hi", "hi");
    my @arg5 = ("hi", "hi");
    my @arg6 = ("hi", "admin");
    my @arg7 = ("hi", "hi", "admin", "project");
    my @arg8 = ("hi", "admin");
    my @arg9 = ("4");
    my @arg10 = ("1", "2", "3", "4", "5");
    my @arg11 = ("4");
    my @arg12 = ("hi", "admin");
    my @arg13 = ("hI", "Hi");
    my @arg14 = ("hI", "Hi");
    if(Compare($candidate->(\@arg12, \@arg13),\@arg14)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ();
    my @arg3 = ("hi", "admin");
    my @arg4 = ("hi", "hi");
    my @arg5 = ("hi", "hi");
    my @arg6 = ("hi", "admin");
    my @arg7 = ("hi", "hi", "admin", "project");
    my @arg8 = ("hi", "admin");
    my @arg9 = ("4");
    my @arg10 = ("1", "2", "3", "4", "5");
    my @arg11 = ("4");
    my @arg12 = ("hi", "admin");
    my @arg13 = ("hI", "Hi");
    my @arg14 = ("hI", "Hi");
    my @arg15 = ("hi", "admin");
    my @arg16 = ("hI", "hi", "hi");
    my @arg17 = ("hI", "hi", "hi");
    if(Compare($candidate->(\@arg15, \@arg16),\@arg17)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ();
    my @arg3 = ("hi", "admin");
    my @arg4 = ("hi", "hi");
    my @arg5 = ("hi", "hi");
    my @arg6 = ("hi", "admin");
    my @arg7 = ("hi", "hi", "admin", "project");
    my @arg8 = ("hi", "admin");
    my @arg9 = ("4");
    my @arg10 = ("1", "2", "3", "4", "5");
    my @arg11 = ("4");
    my @arg12 = ("hi", "admin");
    my @arg13 = ("hI", "Hi");
    my @arg14 = ("hI", "Hi");
    my @arg15 = ("hi", "admin");
    my @arg16 = ("hI", "hi", "hi");
    my @arg17 = ("hI", "hi", "hi");
    my @arg18 = ("hi", "admin");
    my @arg19 = ("hI", "hi", "hii");
    my @arg20 = ("hi", "admin");
    if(Compare($candidate->(\@arg18, \@arg19),\@arg20)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ();
    my @arg3 = ("hi", "admin");
    my @arg4 = ("hi", "hi");
    my @arg5 = ("hi", "hi");
    my @arg6 = ("hi", "admin");
    my @arg7 = ("hi", "hi", "admin", "project");
    my @arg8 = ("hi", "admin");
    my @arg9 = ("4");
    my @arg10 = ("1", "2", "3", "4", "5");
    my @arg11 = ("4");
    my @arg12 = ("hi", "admin");
    my @arg13 = ("hI", "Hi");
    my @arg14 = ("hI", "Hi");
    my @arg15 = ("hi", "admin");
    my @arg16 = ("hI", "hi", "hi");
    my @arg17 = ("hI", "hi", "hi");
    my @arg18 = ("hi", "admin");
    my @arg19 = ("hI", "hi", "hii");
    my @arg20 = ("hi", "admin");
    my @arg21 = ();
    my @arg22 = ("this");
    my @arg23 = ();
    if(Compare($candidate->(\@arg21, \@arg22),\@arg23)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = ();
    my @arg3 = ("hi", "admin");
    my @arg4 = ("hi", "hi");
    my @arg5 = ("hi", "hi");
    my @arg6 = ("hi", "admin");
    my @arg7 = ("hi", "hi", "admin", "project");
    my @arg8 = ("hi", "admin");
    my @arg9 = ("4");
    my @arg10 = ("1", "2", "3", "4", "5");
    my @arg11 = ("4");
    my @arg12 = ("hi", "admin");
    my @arg13 = ("hI", "Hi");
    my @arg14 = ("hI", "Hi");
    my @arg15 = ("hi", "admin");
    my @arg16 = ("hI", "hi", "hi");
    my @arg17 = ("hI", "hi", "hi");
    my @arg18 = ("hi", "admin");
    my @arg19 = ("hI", "hi", "hii");
    my @arg20 = ("hi", "admin");
    my @arg21 = ();
    my @arg22 = ("this");
    my @arg23 = ();
    my @arg24 = ("this");
    my @arg25 = ();
    my @arg26 = ();
    if(Compare($candidate->(\@arg24, \@arg25),\@arg26)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
# Given a positive integer, obtain its roman numeral equivalent as a string,
# and return it in lowercase.
# Restrictions: 1 <= num <= 1000
# Examples:
# >>> int_to_mini_roman(19) == 'xix'
# >>> int_to_mini_roman(152) == 'clii'
# >>> int_to_mini_roman(426) == 'cdxxvi'
sub int_to_mini_roman {
    my($number) = @_;
    my $roman = '';
    my $remainder = $number;
    while ($remainder > 0) {
        if ($remainder >= 1000) {
            $roman .= 'm';
            $remainder -= 1000;
        } elsif ($remainder >= 900) {
            $roman .= 'cm';
            $remainder -= 900;
        } elsif ($remainder >= 500) {
            $roman .= 'd';
            $remainder -= 500;
        } elsif ($remainder >= 400) {
            $roman .= 'cd';
            $remainder -= 400;
        } elsif ($remainder >= 100) {
            $roman .= 'c';
            $remainder -= 100;
        } elsif ($remainder >= 90) {
            $roman .= 'xc';
            $remainder -= 90;
        } elsif ($remainder >= 50) {
            $roman .= 'l';
            $remainder -= 50;
        } elsif ($remainder >= 40) {
            $roman .= 'xl';
            $remainder -= 40;
        } elsif ($remainder >= 10) {
            $roman .= 'x';
            $remainder -= 10;
        } elsif ($remainder >= 9) {
            $roman .= 'ix';
            $remainder -= 9;
        } elsif ($remainder >= 5) {
            $roman .= 'v';
            $remainder -= 5;
        } elsif ($remainder >= 4) {
            $roman .= 'iv';
            $remainder -= 4;
        } elsif ($remainder >= 1) {
            $roman .= 'i';
            $remainder -= 1;
        }
    }
    return $roman;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&int_to_mini_roman;
        if(eq_deeply($candidate->(19),"xix")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(152),"clii")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(251),"ccli")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(426),"cdxxvi")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(500),"d")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1),"i")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(4),"iv")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(43),"xliii")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(90),"xc")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(94),"xciv")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(532),"dxxxii")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(900),"cm")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(994),"cmxciv")) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(1000),"m")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
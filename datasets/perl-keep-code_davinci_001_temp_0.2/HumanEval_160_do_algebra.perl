# Given two lists operator, and operand. The first list has basic algebra operations, and 
# the second list is a list of integers. Use the two given lists to build the algebric 
# expression and return the evaluation of this expression.
# The basic algebra operations:
# Addition ( + ) 
# Subtraction ( - ) 
# Multiplication ( * ) 
# Floor division ( // ) 
# Exponentiation ( ** ) 
# Example:
# operator['+', '*', '-']
# array = [2, 3, 4, 5]
# result = 2 + 3 * 4 - 5
# => result = 9
# Note:
# The length of operator list is equal to the length of operand list minus one.
# Operand is a list of of non-negative integers.
# Operator list has at least one operator, and operand list has at least two operands.
sub do_algebra {
    my($operator, $operand) = @_;
    my $result = $operand->[0];
    for (my $i = 1; $i < @$operand; $i++) {
        my $op = $operator->[$i - 1];
        if ($op eq '+') {
            $result += $operand->[$i];
        } elsif ($op eq '-') {
            $result -= $operand->[$i];
        } elsif ($op eq '*') {
            $result *= $operand->[$i];
        } elsif ($op eq '//') {
            $result = int($result / $operand->[$i]);
        } elsif ($op eq '**') {
            $result = $result ** $operand->[$i];
        }
    }
    return $result;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&do_algebra;
    my @arg0 = ("**", "*", "+");
    my @arg1 = (2, 3, 4, 5);
    if(Compare($candidate->(\@arg0, \@arg1),37)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("**", "*", "+");
    my @arg1 = (2, 3, 4, 5);
    my @arg2 = ("+", "*", "-");
    my @arg3 = (2, 3, 4, 5);
    if(Compare($candidate->(\@arg2, \@arg3),9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("**", "*", "+");
    my @arg1 = (2, 3, 4, 5);
    my @arg2 = ("+", "*", "-");
    my @arg3 = (2, 3, 4, 5);
    my @arg4 = ("//", "*");
    my @arg5 = (7, 3, 4);
    if(Compare($candidate->(\@arg4, \@arg5),8)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
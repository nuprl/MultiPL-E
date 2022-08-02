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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&do_algebra;
        if(eq_deeply($candidate->(["**", "*", "+"], [2, 3, 4, 5]),37)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["+", "*", "-"], [2, 3, 4, 5]),9)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["//", "*"], [7, 3, 4]),8)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
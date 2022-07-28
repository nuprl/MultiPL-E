#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given two lists operator, and operand. The first list has basic algebra operations, and 
// the second list is a list of integers. Use the two given lists to build the algebric 
// expression and return the evaluation of this expression.
// The basic algebra operations:
// Addition ( + ) 
// Subtraction ( - ) 
// Multiplication ( * ) 
// Floor division ( // ) 
// Exponentiation ( ** ) 
// Example:
// operator['+', '*', '-']
// array = [2, 3, 4, 5]
// result = 2 + 3 * 4 - 5
// => result = 9
// Note:
// The length of operator list is equal to the length of operand list minus one.
// Operand is a list of of non-negative integers.
// Operator list has at least one operator, and operand list has at least two operands.
long do_algebra(std::vector<std::string> _operator_, std::vector<long> operand) {
    std::map<std::string, std::function<long(long, long)>> op_map = {
        {"+", [](long a, long b) { return a + b; }},
        {"-", [](long a, long b) { return a - b; }},
        {"*", [](long a, long b) { return a * b; }},
        {"//", [](long a, long b) { return a / b; }},
        {"**", [](long a, long b) { return a ^ b; }}
    };
    std::string op_str = _operator_[0];
    std::function<long(long, long)> op_func = op_map[op_str];
    long result = op_func(operand[0], operand[1]);
    for (int i = 1; i < _operator_.size(); i++) {
        op_str = _operator_[i];
        op_func = op_map[op_str];
        result = op_func(result, operand[i + 1]);
    }
    return result;
}


int main() {
    auto candidate = do_algebra;
    assert(candidate((std::vector<std::string>({"**", "*", "+"})), (std::vector<long>({2, 3, 4, 5}))) == (37));
    assert(candidate((std::vector<std::string>({"+", "*", "-"})), (std::vector<long>({2, 3, 4, 5}))) == (9));
    assert(candidate((std::vector<std::string>({"//", "*"})), (std::vector<long>({7, 3, 4}))) == (8));
}
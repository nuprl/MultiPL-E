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
    std::vector<std::string> operator = _operator_;
    std::vector<long> operand = operand;
    long result = 0;
    std::stack<long> operand_stack;
    std::stack<std::string> operator_stack;
    for (int i = 0; i < operator.size(); i++) {
        if (operator[i] == "+" || operator[i] == "-" || operator[i] == "*" || operator[i] == "//") {
            if (operator_stack.empty()) {
                operator_stack.push(operator[i]);
            } else {
                while (!operator_stack.empty() && (operator_stack.top() == "+" || operator_stack.top() == "-" || operator_stack.top() == "*" || operator_stack.top() == "//")) {
                    if (operator_stack.top() == "+") {
                        operand_stack.push(operand_stack.top() + operand[i]);
                    } else if (operator_stack.top() == "-") {
                        operand_stack.push(operand_stack.top() - operand[i]);
                    } else if (operator_stack.top() == "*") {
                        operand_stack.push(operand_stack.top() * operand[i]);
                    } else if (operator_stack.top() == "//") {
                        operand_stack.push(operand_stack.top() / operand[i]);
                    }
                    operator_stack.pop();
                }
                operator_stack.push(operator[i]);
            }
        } else if (operator[i] == "**") {
            if (operator_stack.empty()) {
                operator_stack.push(operator[i]);
            } else {
                while (!operator_stack.empty() && operator_stack.top() == "**") {
                    operand_stack.push(std::pow(operand_stack.top(), operand[i]));
                    operator_stack.pop();
                }
                operator_stack.push(operator[i]);
           

}
int main() {
    auto candidate = do_algebra;
    assert(candidate((std::vector<std::string>({(std::string)"**", (std::string)"*", (std::string)"+"})), (std::vector<long>({(long)2, (long)3, (long)4, (long)5}))) == (37));
    assert(candidate((std::vector<std::string>({(std::string)"+", (std::string)"*", (std::string)"-"})), (std::vector<long>({(long)2, (long)3, (long)4, (long)5}))) == (9));
    assert(candidate((std::vector<std::string>({(std::string)"//", (std::string)"*"})), (std::vector<long>({(long)7, (long)3, (long)4}))) == (8));
}

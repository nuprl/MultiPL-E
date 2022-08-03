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
long do_algebra(std::vector<std::string> op, std::vector<long> operand) {
    long result = operand[0];
    for (int i = 1; i < op.size(); i++) {
        if (op[i] == "+") {
            result += operand[i];
        } else if (op[i] == "-") {
            result -= operand[i];
        } else if (op[i] == "*") {
            result *= operand[i];
        } else if (op[i] == "//") {
            result /= operand[i];
        } else if (op[i] == "**") {
            result = std::pow(result, operand[i]);
        }
    }
    return result;

}
int main() {
    auto candidate = do_algebra;
    assert(candidate((std::vector<std::string>({(std::string)"**", (std::string)"*", (std::string)"+"})), (std::vector<long>({(long)2, (long)3, (long)4, (long)5}))) == (37));
    assert(candidate((std::vector<std::string>({(std::string)"+", (std::string)"*", (std::string)"-"})), (std::vector<long>({(long)2, (long)3, (long)4, (long)5}))) == (9));
    assert(candidate((std::vector<std::string>({(std::string)"//", (std::string)"*"})), (std::vector<long>({(long)7, (long)3, (long)4}))) == (8));
}

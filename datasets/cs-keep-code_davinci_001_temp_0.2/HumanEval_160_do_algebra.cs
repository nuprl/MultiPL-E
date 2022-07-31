using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
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
    public static int DoAlgebra(List<string> op, List<int> operand) {
        // Write your code here
        int result = 0;
        int i = 0;
        while (i < op.Count) {
            if (op[i] == "+") {
                result += operand[i + 1];
            } else if (op[i] == "-") {
                result -= operand[i + 1];
            } else if (op[i] == "*") {
                result *= operand[i + 1];
            } else if (op[i] == "//") {
                result /= operand[i + 1];
            } else if (op[i] == "**") {
                result = (int)Math.Pow(result, operand[i + 1]);
            }
            i++;
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(DoAlgebra((new List<string>(new string[]{(string)"**", (string)"*", (string)"+"})), (new List<int>(new int[]{(int)2, (int)3, (int)4, (int)5}))) == (37));
    Debug.Assert(DoAlgebra((new List<string>(new string[]{(string)"+", (string)"*", (string)"-"})), (new List<int>(new int[]{(int)2, (int)3, (int)4, (int)5}))) == (9));
    Debug.Assert(DoAlgebra((new List<string>(new string[]{(string)"//", (string)"*"})), (new List<int>(new int[]{(int)7, (int)3, (int)4}))) == (8));
    }

}

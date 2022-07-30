import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given two lists operator, and operand. The first list has basic algebra operations, and 
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
    public static long do_algebra(ArrayList<String> _operator_, ArrayList<Long> operand) {
        if (_operator_.size() != operand.size() - 1) {
            throw new IllegalArgumentException("Invalid input");
        }
        if (operand.size() < 2) {
            throw new IllegalArgumentException("Invalid input");
        }
        if (operand.size() == 2) {
            return operand.get(0) + operand.get(1);
        }
        int i = 0;
        long result = operand.get(0);
        while (i < _operator_.size()) {
            switch (_operator_.get(i)) {
                case "+":
                    result += operand.get(i + 1);
                    break;
                case "-":
                    result -= operand.get(i + 1);
                    break;
                case "*":
                    result *= operand.get(i + 1);
                    break;
                case "//":
                    result /= operand.get(i + 1);
                    break;
                case "**":
                    result = Math.pow(result, operand.get(i + 1));
                    break;
                default:
                    throw new IllegalArgumentException("Invalid input");
            }
            i++;
        }
        return result;
    }
    public static void main(String[] args) {
        ArrayList<String> operator = new ArrayList<String>();
        operator.add("+");
        operator.add("*");
        operator.add("-");
        ArrayList<Long> operand = new ArrayList<Long>();
        operand.add(2L);
        operand.add(3L);
        operand.add(4L);
        operand.add(5L);
        System.out.println(do_algebra(operator, operand));
    }
}

    }
    public static void main(String[] args) {
    assert(do_algebra((new ArrayList<String>(Arrays.asList((String)"**", (String)"*", (String)"+"))), (new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)4l, (long)5l)))) == (37l));
    assert(do_algebra((new ArrayList<String>(Arrays.asList((String)"+", (String)"*", (String)"-"))), (new ArrayList<Long>(Arrays.asList((long)2l, (long)3l, (long)4l, (long)5l)))) == (9l));
    assert(do_algebra((new ArrayList<String>(Arrays.asList((String)"//", (String)"*"))), (new ArrayList<Long>(Arrays.asList((long)7l, (long)3l, (long)4l)))) == (8l));
    }

}

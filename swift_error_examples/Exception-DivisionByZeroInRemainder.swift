// ----------- problem HumanEval_49_modp, completion 47 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002baa90b90c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002baa90887561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002baa90887286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002baa9088713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002baa90886bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpzvd9j90q                        0x000055c8dc609730 <unavailable> + 5936
6    tmpzvd9j90q                        0x000055c8dc6091e0 <unavailable> + 4576
7    libc.so.6                          0x00002baa90d7c460 __libc_start_main + 245
8    tmpzvd9j90q                        0x000055c8dc608ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var result = 1
    var n = n
    var p = p
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_94_skjkasdkd, completion 182 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002b9cfe2adc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9cfdfa4561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9cfdfa4286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9cfdfa413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9cfdfa3bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpg15ty0pt                        0x000055bbf1b81346 <unavailable> + 9030
6    tmpg15ty0pt                        0x000055bbf1b80602 <unavailable> + 5634
7    libc.so.6                          0x00002b9cfe499460 __libc_start_main + 245
8    tmpg15ty0pt                        0x000055bbf1b80239 <unavailable> + 4665

*/
/* stdout = 

*/


/// You are given an array of integers.
/// You need to find the largest prime value and return the sum of its digits.
/// Examples:
/// >>> skjkasdkd(lst: [0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3])
/// 10
/// >>> skjkasdkd(lst: [1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1])
/// 25
/// >>> skjkasdkd(lst: [1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3])
/// 13
/// >>> skjkasdkd(lst: [0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6])
/// 11
/// >>> skjkasdkd(lst: [0, 81, 12, 3, 1, 21])
/// 3
/// >>> skjkasdkd(lst: [0, 8, 1, 2, 1, 7])
/// 7
func skjkasdkd(lst: [Int]) -> Int {
    var lst = lst
    var max = 0
    for i in lst {
        if i > max {
            max = i
        }
    }
    for i in lst {
        if i == max {
            lst.remove(at: lst.firstIndex(of: i)!)
        }
    }
    for i in lst {
        if max % i == 0 {
            max = skjkasdkd(lst: lst)
        }
    }
    var sum = 0
    while max > 0 {
        sum += max % 10
        max /= 10
    }
    return sum
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(skjkasdkd(lst: [0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3]) == 10)
assert(skjkasdkd(lst: [1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1]) == 25)
assert(skjkasdkd(lst: [1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3]) == 13)
assert(skjkasdkd(lst: [0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6]) == 11)
assert(skjkasdkd(lst: [0, 81, 12, 3, 1, 21]) == 3)
assert(skjkasdkd(lst: [0, 8, 1, 2, 1, 7]) == 7)
assert(skjkasdkd(lst: [8191]) == 19)
assert(skjkasdkd(lst: [8191, 123456, 127, 7]) == 19)
assert(skjkasdkd(lst: [127, 97, 8192]) == 10)



// ----------- problem HumanEval_49_modp, completion 83 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002ac3d1413c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac3d110a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac3d110a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac3d110a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac3d1109bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgshix713                        0x00005631ae41b730 <unavailable> + 5936
6    tmpgshix713                        0x00005631ae41b1e0 <unavailable> + 4576
7    libc.so.6                          0x00002ac3d15ff460 __libc_start_main + 245
8    tmpgshix713                        0x00005631ae41aef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 99 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002baa90b90c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002baa90887561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002baa90887286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002baa9088713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002baa90886bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpzvd9j90q                        0x000055c8dc609730 <unavailable> + 5936
6    tmpzvd9j90q                        0x000055c8dc6091e0 <unavailable> + 4576
7    libc.so.6                          0x00002baa90d7c460 __libc_start_main + 245
8    tmpzvd9j90q                        0x000055c8dc608ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var result = 1
    var n = n
    var p = p
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 94 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002ac3d1413c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac3d110a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac3d110a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac3d110a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac3d1109bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgshix713                        0x00005631ae41b730 <unavailable> + 5936
6    tmpgshix713                        0x00005631ae41b1e0 <unavailable> + 4576
7    libc.so.6                          0x00002ac3d15ff460 __libc_start_main + 245
8    tmpgshix713                        0x00005631ae41aef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 164 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002baa90b90c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002baa90887561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002baa90887286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002baa9088713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002baa90886bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpzvd9j90q                        0x000055c8dc609730 <unavailable> + 5936
6    tmpzvd9j90q                        0x000055c8dc6091e0 <unavailable> + 4576
7    libc.so.6                          0x00002baa90d7c460 __libc_start_main + 245
8    tmpzvd9j90q                        0x000055c8dc608ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var result = 1
    var n = n
    var p = p
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 88 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002b6847e60c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b6847b57561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b6847b57286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b6847b5713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b6847b56bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpo0t_g801                        0x0000563dfef21730 <unavailable> + 5936
6    tmpo0t_g801                        0x0000563dfef211e0 <unavailable> + 4576
7    libc.so.6                          0x00002b684804c460 __libc_start_main + 245
8    tmpo0t_g801                        0x0000563dfef20ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var res = 1
    var n = n
    var p = p
    while n > 0 {
        if n % 2 == 1 {
            res = (res * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return res
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 79 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002baa90b90c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002baa90887561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002baa90887286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002baa9088713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002baa90886bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpzvd9j90q                        0x000055c8dc609730 <unavailable> + 5936
6    tmpzvd9j90q                        0x000055c8dc6091e0 <unavailable> + 4576
7    libc.so.6                          0x00002baa90d7c460 __libc_start_main + 245
8    tmpzvd9j90q                        0x000055c8dc608ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var result = 1
    var n = n
    var p = p
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 10 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002baa90b90c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002baa90887561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002baa90887286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002baa9088713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002baa90886bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpzvd9j90q                        0x000055c8dc609730 <unavailable> + 5936
6    tmpzvd9j90q                        0x000055c8dc6091e0 <unavailable> + 4576
7    libc.so.6                          0x00002baa90d7c460 __libc_start_main + 245
8    tmpzvd9j90q                        0x000055c8dc608ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var result = 1
    var n = n
    var p = p
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 26 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002ac3d1413c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac3d110a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac3d110a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac3d110a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac3d1109bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgshix713                        0x00005631ae41b730 <unavailable> + 5936
6    tmpgshix713                        0x00005631ae41b1e0 <unavailable> + 4576
7    libc.so.6                          0x00002ac3d15ff460 __libc_start_main + 245
8    tmpgshix713                        0x00005631ae41aef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 142 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002b6847e60c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b6847b57561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b6847b57286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b6847b5713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b6847b56bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpo0t_g801                        0x0000563dfef21730 <unavailable> + 5936
6    tmpo0t_g801                        0x0000563dfef211e0 <unavailable> + 4576
7    libc.so.6                          0x00002b684804c460 __libc_start_main + 245
8    tmpo0t_g801                        0x0000563dfef20ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var res = 1
    var n = n
    var p = p
    while n > 0 {
        if n % 2 == 1 {
            res = (res * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return res
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 112 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002ac3d1413c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac3d110a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac3d110a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac3d110a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac3d1109bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgshix713                        0x00005631ae41b730 <unavailable> + 5936
6    tmpgshix713                        0x00005631ae41b1e0 <unavailable> + 4576
7    libc.so.6                          0x00002ac3d15ff460 __libc_start_main + 245
8    tmpgshix713                        0x00005631ae41aef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 84 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002b3f1511dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3f14e14561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3f14e14286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3f14e1413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3f14e13bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpqo2vybaw                        0x000055c1787b569d <unavailable> + 5789
6    tmpqo2vybaw                        0x000055c1787b51e0 <unavailable> + 4576
7    libc.so.6                          0x00002b3f15309460 __libc_start_main + 245
8    tmpqo2vybaw                        0x000055c1787b4ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var res = 1
    var n = n
    var p = p
    while n > 0 {
        if n & 1 == 1 {
            res = (res * n) % p
        }
        n = n >> 1
        p = (p * p) % p
    }
    return res
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 42 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002b3f1511dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3f14e14561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3f14e14286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3f14e1413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3f14e13bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpqo2vybaw                        0x000055c1787b569d <unavailable> + 5789
6    tmpqo2vybaw                        0x000055c1787b51e0 <unavailable> + 4576
7    libc.so.6                          0x00002b3f15309460 __libc_start_main + 245
8    tmpqo2vybaw                        0x000055c1787b4ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var res = 1
    var n = n
    var p = p
    while n > 0 {
        if n & 1 == 1 {
            res = (res * n) % p
        }
        n = n >> 1
        p = (p * p) % p
    }
    return res
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 155 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002ac3d1413c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac3d110a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac3d110a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac3d110a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac3d1109bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgshix713                        0x00005631ae41b730 <unavailable> + 5936
6    tmpgshix713                        0x00005631ae41b1e0 <unavailable> + 4576
7    libc.so.6                          0x00002ac3d15ff460 __libc_start_main + 245
8    tmpgshix713                        0x00005631ae41aef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 45 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002baa90b90c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002baa90887561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002baa90887286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002baa9088713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002baa90886bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpzvd9j90q                        0x000055c8dc609730 <unavailable> + 5936
6    tmpzvd9j90q                        0x000055c8dc6091e0 <unavailable> + 4576
7    libc.so.6                          0x00002baa90d7c460 __libc_start_main + 245
8    tmpzvd9j90q                        0x000055c8dc608ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var result = 1
    var n = n
    var p = p
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 96 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002ac3d1413c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac3d110a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac3d110a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac3d110a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac3d1109bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgshix713                        0x00005631ae41b730 <unavailable> + 5936
6    tmpgshix713                        0x00005631ae41b1e0 <unavailable> + 4576
7    libc.so.6                          0x00002ac3d15ff460 __libc_start_main + 245
8    tmpgshix713                        0x00005631ae41aef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 160 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002ac3d1413c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac3d110a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac3d110a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac3d110a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac3d1109bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgshix713                        0x00005631ae41b730 <unavailable> + 5936
6    tmpgshix713                        0x00005631ae41b1e0 <unavailable> + 4576
7    libc.so.6                          0x00002ac3d15ff460 __libc_start_main + 245
8    tmpgshix713                        0x00005631ae41aef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 37 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002baa90b90c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002baa90887561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002baa90887286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002baa9088713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002baa90886bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpzvd9j90q                        0x000055c8dc609730 <unavailable> + 5936
6    tmpzvd9j90q                        0x000055c8dc6091e0 <unavailable> + 4576
7    libc.so.6                          0x00002baa90d7c460 __libc_start_main + 245
8    tmpzvd9j90q                        0x000055c8dc608ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var result = 1
    var n = n
    var p = p
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 123 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002ac3d1413c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac3d110a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac3d110a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac3d110a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac3d1109bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgshix713                        0x00005631ae41b730 <unavailable> + 5936
6    tmpgshix713                        0x00005631ae41b1e0 <unavailable> + 4576
7    libc.so.6                          0x00002ac3d15ff460 __libc_start_main + 245
8    tmpgshix713                        0x00005631ae41aef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 111 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002baa90b90c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002baa90887561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002baa90887286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002baa9088713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002baa90886bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpzvd9j90q                        0x000055c8dc609730 <unavailable> + 5936
6    tmpzvd9j90q                        0x000055c8dc6091e0 <unavailable> + 4576
7    libc.so.6                          0x00002baa90d7c460 __libc_start_main + 245
8    tmpzvd9j90q                        0x000055c8dc608ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var result = 1
    var n = n
    var p = p
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 100 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002baa90b90c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002baa90887561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002baa90887286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002baa9088713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002baa90886bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpzvd9j90q                        0x000055c8dc609730 <unavailable> + 5936
6    tmpzvd9j90q                        0x000055c8dc6091e0 <unavailable> + 4576
7    libc.so.6                          0x00002baa90d7c460 __libc_start_main + 245
8    tmpzvd9j90q                        0x000055c8dc608ef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var result = 1
    var n = n
    var p = p
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 57 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002ac3d1413c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac3d110a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac3d110a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac3d110a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac3d1109bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgshix713                        0x00005631ae41b730 <unavailable> + 5936
6    tmpgshix713                        0x00005631ae41b1e0 <unavailable> + 4576
7    libc.so.6                          0x00002ac3d15ff460 __libc_start_main + 245
8    tmpgshix713                        0x00005631ae41aef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)



// ----------- problem HumanEval_49_modp, completion 122 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/IntegerTypes.swift:14366: Fatal error: Division by zero in remainder operation
Current stack trace:
0    libswiftCore.so                    0x00002ac3d1413c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac3d110a561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac3d110a286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac3d110a13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac3d1109bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgshix713                        0x00005631ae41b730 <unavailable> + 5936
6    tmpgshix713                        0x00005631ae41b1e0 <unavailable> + 4576
7    libc.so.6                          0x00002ac3d15ff460 __libc_start_main + 245
8    tmpgshix713                        0x00005631ae41aef9 <unavailable> + 3833

*/
/* stdout = 

*/


/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(n: 3, p: 5)
/// 3
/// >>> modp(n: 1101, p: 101)
/// 2
/// >>> modp(n: 0, p: 101)
/// 1
/// >>> modp(n: 3, p: 11)
/// 8
/// >>> modp(n: 100, p: 101)
/// 1
func modp(n: Int, p: Int) -> Int {
    var n = n
    var p = p
    var result = 1
    while n > 0 {
        if n % 2 == 1 {
            result = (result * n) % p
        }
        n = n / 2
        p = (p * p) % p
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(modp(n: 3, p: 5) == 3)
assert(modp(n: 1101, p: 101) == 2)
assert(modp(n: 0, p: 101) == 1)
assert(modp(n: 3, p: 11) == 8)
assert(modp(n: 100, p: 101) == 1)
assert(modp(n: 30, p: 5) == 4)
assert(modp(n: 31, p: 5) == 3)




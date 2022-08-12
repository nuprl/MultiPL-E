// ----------- problem HumanEval_82_prime_length, completion 135 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 100 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 97 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 196 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_82_prime_length, completion 115 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 190 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 32 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 11 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 129 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b195974bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1959442561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1959442286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b195944213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1959441bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpw4zb28ar                        0x0000555c65cf50f3 <unavailable> + 8435
6    tmpw4zb28ar                        0x0000555c65cf49d4 <unavailable> + 6612
7    libc.so.6                          0x00002b1959937460 __libc_start_main + 245
8    tmpw4zb28ar                        0x0000555c65cf41a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count-1 {
        if lst[i] > lst[i+1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 133 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 40 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ac3e6d03c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac3e69fa561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac3e69fa286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac3e69fa13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac3e69f9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpjh6ev8mf                        0x000055b71e3840da <unavailable> + 8410
6    tmpjh6ev8mf                        0x000055b71e3839d4 <unavailable> + 6612
7    libc.so.6                          0x00002ac3e6eef460 __libc_start_main + 245
8    tmpjh6ev8mf                        0x000055b71e3831a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_10_make_palindrome, completion 157 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b41a2255c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b41a1f4c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b41a1f4c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b41a1f4c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b41a1f4bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmplki_snb4                        0x000055c37b82e668 <unavailable> + 9832
6    tmplki_snb4                        0x000055c37b82dace <unavailable> + 6862
7    libc.so.6                          0x00002b41a2441460 __libc_start_main + 245
8    tmplki_snb4                        0x000055c37b82d6e9 <unavailable> + 5865

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    let string_length = string.count
    if string_length == 0 {
        return ""
    }
    let string_array = Array(string)
    var longest_palindrome_length = 0
    var longest_palindrome_end = 0
    var palindrome_lengths = [Int](repeating: 0, count: string_length)
    for i in 0..<string_length {
        let mirror = string_length - 1 - i
        if mirror < i {
            break
        }
        if string_array[i] == string_array[mirror] {
            palindrome_lengths[mirror] = i > 0 ? 2 + palindrome_lengths[i - 1] : 2
            if palindrome_lengths[mirror] > longest_palindrome_length {
                longest_palindrome_length = palindrome_lengths[mirror]
                longest_palindrome_end = mirror
            }
        }
    }
    let prefix_start = longest_palindrome_end + 1 - longest_palindrome_length
    let prefix = String(string_array[0..<prefix_start])
    let reversed_prefix = String(prefix.reversed())
    return string + reversed_prefix
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
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_102_choose_num, completion 8 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_126_is_sorted, completion 177 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 185 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 105 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 51 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_126_is_sorted, completion 24 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 57 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_40_triples_sum_to_zero, completion 87 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b527f3ffc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b527f0f6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b527f0f6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b527f0f613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b527f0f5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmppk2c4q74                        0x0000556454846f10 <unavailable> + 7952
6    tmppk2c4q74                        0x0000556454846aee <unavailable> + 6894
7    libc.so.6                          0x00002b527f5eb460 __libc_start_main + 245
8    tmppk2c4q74                        0x00005564548462c9 <unavailable> + 4809

*/
/* stdout = 

*/


/// triples_sum_to_zero takes an array of integers as an input.
/// it returns true if there are three distinct elements in the array that
/// sum to zero, and false otherwise.
/// >>> triples_sum_to_zero(l: [1, 3, 5, 0])
/// false
/// >>> triples_sum_to_zero(l: [1, 3, -2, 1])
/// true
/// >>> triples_sum_to_zero(l: [1, 2, 3, 7])
/// false
/// >>> triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7])
/// true
/// >>> triples_sum_to_zero(l: [1])
/// false
func triples_sum_to_zero(l: [Int]) -> Bool {
    var l = l
    l.sort()
    for i in 0..<l.count - 2 {
        var j = i + 1
        var k = l.count - 1
        while j < k {
            if l[i] + l[j] + l[k] == 0 {
                return true
            } else if l[i] + l[j] + l[k] < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    return false
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
            
assert(triples_sum_to_zero(l: [1, 3, 5, 0]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -1]) == false)
assert(triples_sum_to_zero(l: [1, 3, -2, 1]) == true)
assert(triples_sum_to_zero(l: [1, 2, 3, 7]) == false)
assert(triples_sum_to_zero(l: [1, 2, 5, 7]) == false)
assert(triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7]) == true)
assert(triples_sum_to_zero(l: [1]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -100]) == false)
assert(triples_sum_to_zero(l: [100, 3, 5, -100]) == false)



// ----------- problem HumanEval_102_choose_num, completion 156 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_126_is_sorted, completion 43 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 14 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_96_count_up_to, completion 97 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b351648cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3516183561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3516183286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b351618313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3516182bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr464czot                        0x000055bb1459e139 <unavailable> + 8505
6    tmpr464czot                        0x000055bb1459d89f <unavailable> + 6303
7    libc.so.6                          0x00002b3516678460 __libc_start_main + 245
8    tmpr464czot                        0x000055bb1459d209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// >>> count_up_to(n: 5)
/// [2, 3]
/// >>> count_up_to(n: 11)
/// [2, 3, 5, 7]
/// >>> count_up_to(n: 0)
/// [] as [Int]
/// >>> count_up_to(n: 20)
/// [2, 3, 5, 7, 11, 13, 17, 19]
/// >>> count_up_to(n: 1)
/// [] as [Int]
/// >>> count_up_to(n: 18)
/// [2, 3, 5, 7, 11, 13, 17]
func count_up_to(n: Int) -> [Int] {
    var primes = [Int]()
    for i in 2..<n {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        if isPrime {
            primes.append(i)
        }
    }
    return primes
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
            
assert(count_up_to(n: 5) == [2, 3])
assert(count_up_to(n: 6) == [2, 3, 5])
assert(count_up_to(n: 7) == [2, 3, 5])
assert(count_up_to(n: 10) == [2, 3, 5, 7])
assert(count_up_to(n: 0) == [] as [Int])
assert(count_up_to(n: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
assert(count_up_to(n: 1) == [] as [Int])
assert(count_up_to(n: 18) == [2, 3, 5, 7, 11, 13, 17])
assert(count_up_to(n: 47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
assert(count_up_to(n: 101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])



// ----------- problem HumanEval_82_prime_length, completion 110 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 51 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_135_can_arrange, completion 58 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002abd7da5bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002abd7d752561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002abd7d752286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002abd7d75213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002abd7d751bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3i_hfykn                        0x0000564da412c9c2 <unavailable> + 6594
6    tmp3i_hfykn                        0x0000564da412c81c <unavailable> + 6172
7    libc.so.6                          0x00002abd7dc47460 __libc_start_main + 245
8    tmp3i_hfykn                        0x0000564da412c1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// >>> can_arrange(arr: [1, 2, 4, 3, 5])
/// 3
/// >>> can_arrange(arr: [1, 2, 3])
/// -1
func can_arrange(arr: [Int]) -> Int {
    var maxIndex = -1
    for i in 1..<arr.count {
        if arr[i] <= arr[i - 1] {
            maxIndex = i
        }
    }
    return maxIndex
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
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)



// ----------- problem HumanEval_82_prime_length, completion 63 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 183 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 185 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 193 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 69 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 26 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 199 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 33 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 125 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 136 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_24_largest_divisor, completion 53 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b8a1938ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8a19081561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8a19081286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8a1908113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8a19080bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpyzrdfc4k                        0x0000561cf8dbc6c9 <unavailable> + 5833
6    tmpyzrdfc4k                        0x0000561cf8dbc2c8 <unavailable> + 4808
7    libc.so.6                          0x00002b8a19576460 __libc_start_main + 245
8    tmpyzrdfc4k                        0x0000561cf8dbbfe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// For a given number n, find the largest number that divides n evenly, smaller than n
/// >>> largest_divisor(n: 15)
/// 5
func largest_divisor(n: Int) -> Int {
    var largest_divisor = 1
    for i in 2...n/2 {
        if n % i == 0 {
            largest_divisor = i
        }
    }
    return largest_divisor
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
            
assert(largest_divisor(n: 3) == 1)
assert(largest_divisor(n: 7) == 1)
assert(largest_divisor(n: 10) == 5)
assert(largest_divisor(n: 100) == 50)
assert(largest_divisor(n: 49) == 7)



// ----------- problem HumanEval_10_make_palindrome, completion 170 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b68fdaadc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b68fd7a4561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b68fd7a4286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b68fd7a413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b68fd7a3bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpn7ooxrek                        0x0000555b6ce8a8c2 <unavailable> + 10434
6    tmpn7ooxrek                        0x0000555b6ce89a5e <unavailable> + 6750
7    libc.so.6                          0x00002b68fdc99460 __libc_start_main + 245
8    tmpn7ooxrek                        0x0000555b6ce89679 <unavailable> + 5753

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    let string_length = string.count
    if string_length == 0 {
        return ""
    }
    let string_array = Array(string)
    var longest_palindrome_length = 0
    var longest_palindrome_index = 0
    var current_palindrome_length = 0
    var current_palindrome_index = 0
    for i in 0..<string_length {
        if i > 0 && string_array[i] == string_array[i - 1] {
            current_palindrome_length = 2
            current_palindrome_index = i - 1
        } else {
            current_palindrome_length = 1
            current_palindrome_index = i
        }
        var j = 1
        while current_palindrome_index - j >= 0 && current_palindrome_index + j < string_length && string_array[current_palindrome_index - j] == string_array[current_palindrome_index + j] {
            current_palindrome_length += 2
            current_palindrome_index -= 1
            j += 1
        }
        if current_palindrome_length > longest_palindrome_length {
            longest_palindrome_length = current_palindrome_length
            longest_palindrome_index = current_palindrome_index
        }
    }
    let prefix_start = longest_palindrome_index + longest_palindrome_length
    let prefix_end = string_length - 1
    let prefix = string_array[prefix_start...prefix_end]
    let prefix_reversed = prefix.reversed()
    return string + String(prefix_reversed)
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
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_126_is_sorted, completion 28 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 17 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 45 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 59 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 7 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 53 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 165 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b87e2e48c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b87e2b3f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b87e2b3f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b87e2b3f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b87e2b3ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp2j1tn8nz                        0x000055c54ff9a0ee <unavailable> + 8430
6    tmp2j1tn8nz                        0x000055c54ff999d4 <unavailable> + 6612
7    libc.so.6                          0x00002b87e3034460 __libc_start_main + 245
8    tmp2j1tn8nz                        0x000055c54ff991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count-1 {
        if lst[i] > lst[i+1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 81 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 171 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 150 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_135_can_arrange, completion 131 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ad84a7a5c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad84a49c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad84a49c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad84a49c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad84a49bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3ntlqlao                        0x000055d9c64689c2 <unavailable> + 6594
6    tmp3ntlqlao                        0x000055d9c646881c <unavailable> + 6172
7    libc.so.6                          0x00002ad84a991460 __libc_start_main + 245
8    tmp3ntlqlao                        0x000055d9c64681a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// >>> can_arrange(arr: [1, 2, 4, 3, 5])
/// 3
/// >>> can_arrange(arr: [1, 2, 3])
/// -1
func can_arrange(arr: [Int]) -> Int {
    var max_index = -1
    for i in 1..<arr.count {
        if arr[i] <= arr[i - 1] {
            max_index = i
        }
    }
    return max_index
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
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)



// ----------- problem HumanEval_82_prime_length, completion 170 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 85 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 9 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 173 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_126_is_sorted, completion 37 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b195974bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1959442561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1959442286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b195944213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1959441bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpw4zb28ar                        0x0000555c65cf50f3 <unavailable> + 8435
6    tmpw4zb28ar                        0x0000555c65cf49d4 <unavailable> + 6612
7    libc.so.6                          0x00002b1959937460 __libc_start_main + 245
8    tmpw4zb28ar                        0x0000555c65cf41a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count-1 {
        if lst[i] > lst[i+1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_102_choose_num, completion 97 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_82_prime_length, completion 30 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_127_intersection, completion 154 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b8ef3ffec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8ef3cf5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8ef3cf5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8ef3cf513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8ef3cf4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp95ewo5xz                        0x0000562932deaf52 <unavailable> + 8018
6    tmp95ewo5xz                        0x0000562932dea4a8 <unavailable> + 5288
7    libc.so.6                          0x00002b8ef41ea460 __libc_start_main + 245
8    tmp95ewo5xz                        0x0000562932dea1b9 <unavailable> + 4537

*/
/* stdout = 

*/


/// You are given two intervals,
/// where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
/// The given intervals are closed which means that the interval (start, end)
/// includes both start and end.
/// For each given interval, it is assumed that its start is less or equal its end.
/// Your task is to determine whether the length of intersection of these two 
/// intervals is a prime number.
/// Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
/// which its length is 1, which not a prime number.
/// If the length of the intersection is a prime number, return "YES",
/// otherwise, return "NO".
/// If the two intervals don't intersect, return "NO".
/// [input/output] samples:
/// >>> intersection(interval1: (1, 2), interval2: (2, 3))
/// "NO"
/// >>> intersection(interval1: (-1, 1), interval2: (0, 4))
/// "NO"
/// >>> intersection(interval1: (-3, -1), interval2: (-5, 5))
/// "YES"
func intersection(interval1: (Int, Int), interval2: (Int, Int)) -> String {
    let (start1, end1) = interval1
    let (start2, end2) = interval2
    let start = max(start1, start2)
    let end = min(end1, end2)
    if start > end {
        return "NO"
    }
    let length = end - start + 1
    if length == 2 {
        return "YES"
    }
    for i in 2..<length {
        if length % i == 0 {
            return "NO"
        }
    }
    return "YES"
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
            
assert(intersection(interval1: (1, 2), interval2: (2, 3)) == "NO")
assert(intersection(interval1: (-1, 1), interval2: (0, 4)) == "NO")
assert(intersection(interval1: (-3, -1), interval2: (-5, 5)) == "YES")
assert(intersection(interval1: (-2, 2), interval2: (-4, 0)) == "YES")
assert(intersection(interval1: (-11, 2), interval2: (-1, -1)) == "NO")
assert(intersection(interval1: (1, 2), interval2: (3, 5)) == "NO")
assert(intersection(interval1: (1, 2), interval2: (1, 2)) == "NO")
assert(intersection(interval1: (-2, -2), interval2: (-3, -2)) == "NO")



// ----------- problem HumanEval_96_count_up_to, completion 158 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b351648cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3516183561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3516183286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b351618313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3516182bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr464czot                        0x000055bb1459e139 <unavailable> + 8505
6    tmpr464czot                        0x000055bb1459d89f <unavailable> + 6303
7    libc.so.6                          0x00002b3516678460 __libc_start_main + 245
8    tmpr464czot                        0x000055bb1459d209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// >>> count_up_to(n: 5)
/// [2, 3]
/// >>> count_up_to(n: 11)
/// [2, 3, 5, 7]
/// >>> count_up_to(n: 0)
/// [] as [Int]
/// >>> count_up_to(n: 20)
/// [2, 3, 5, 7, 11, 13, 17, 19]
/// >>> count_up_to(n: 1)
/// [] as [Int]
/// >>> count_up_to(n: 18)
/// [2, 3, 5, 7, 11, 13, 17]
func count_up_to(n: Int) -> [Int] {
    var primes = [Int]()
    for i in 2..<n {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        if isPrime {
            primes.append(i)
        }
    }
    return primes
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
            
assert(count_up_to(n: 5) == [2, 3])
assert(count_up_to(n: 6) == [2, 3, 5])
assert(count_up_to(n: 7) == [2, 3, 5])
assert(count_up_to(n: 10) == [2, 3, 5, 7])
assert(count_up_to(n: 0) == [] as [Int])
assert(count_up_to(n: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
assert(count_up_to(n: 1) == [] as [Int])
assert(count_up_to(n: 18) == [2, 3, 5, 7, 11, 13, 17])
assert(count_up_to(n: 47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
assert(count_up_to(n: 101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])



// ----------- problem HumanEval_82_prime_length, completion 68 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 71 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ba585a28c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba58571f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba58571f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba58571f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba58571ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpjkima892                        0x0000563f460b90f3 <unavailable> + 8435
6    tmpjkima892                        0x0000563f460b89d4 <unavailable> + 6612
7    libc.so.6                          0x00002ba585c14460 __libc_start_main + 245
8    tmpjkima892                        0x0000563f460b81a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] >= lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_24_largest_divisor, completion 76 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b8a1938ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8a19081561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8a19081286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8a1908113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8a19080bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpyzrdfc4k                        0x0000561cf8dbc6c9 <unavailable> + 5833
6    tmpyzrdfc4k                        0x0000561cf8dbc2c8 <unavailable> + 4808
7    libc.so.6                          0x00002b8a19576460 __libc_start_main + 245
8    tmpyzrdfc4k                        0x0000561cf8dbbfe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// For a given number n, find the largest number that divides n evenly, smaller than n
/// >>> largest_divisor(n: 15)
/// 5
func largest_divisor(n: Int) -> Int {
    var largest_divisor = 1
    for i in 2...n/2 {
        if n % i == 0 {
            largest_divisor = i
        }
    }
    return largest_divisor
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
            
assert(largest_divisor(n: 3) == 1)
assert(largest_divisor(n: 7) == 1)
assert(largest_divisor(n: 10) == 5)
assert(largest_divisor(n: 100) == 50)
assert(largest_divisor(n: 49) == 7)



// ----------- problem HumanEval_82_prime_length, completion 132 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 111 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b174ad22c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b174aa19561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b174aa19286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b174aa1913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b174aa18bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp_vps3lco                        0x0000559fd7ed3141 <unavailable> + 8513
6    tmp_vps3lco                        0x0000559fd7ed23c6 <unavailable> + 5062
7    libc.so.6                          0x00002b174af0e460 __libc_start_main + 245
8    tmp_vps3lco                        0x0000559fd7ed20c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 2 {
        return true
    }
    if length % 2 == 0 {
        return false
    }
    for i in 3...length/2 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_65_circular_shift, completion 176 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002aade0e18c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aade0b0f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aade0b0f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aade0b0f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aade0b0ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp2oquaq51                        0x0000564ffcb52fc8 <unavailable> + 8136
6    tmp2oquaq51                        0x0000564ffcb52810 <unavailable> + 6160
7    libc.so.6                          0x00002aade1004460 __libc_start_main + 245
8    tmp2oquaq51                        0x0000564ffcb52529 <unavailable> + 5417

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let n = digits.count
    if shift > n {
        return String(digits.reversed())
    }
    let left = digits.index(digits.startIndex, offsetBy: shift)
    let right = digits.index(digits.startIndex, offsetBy: n - shift)
    return String(digits[left..<right] + digits[digits.startIndex..<left])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_126_is_sorted, completion 153 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 144 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ae1aaa37c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae1aa72e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae1aa72e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae1aa72e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae1aa72dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp0dbhho3q                        0x0000558d1a69afda <unavailable> + 8154
6    tmp0dbhho3q                        0x0000558d1a69a920 <unavailable> + 6432
7    libc.so.6                          0x00002ae1aac23460 __libc_start_main + 245
8    tmp0dbhho3q                        0x0000558d1a69a0c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 2 {
        return true
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 122 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 192 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 78 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_65_circular_shift, completion 163 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002baa6712ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002baa66e21561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002baa66e21286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002baa66e2113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002baa66e20bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp5d3dv93i                        0x0000559c0ad5901a <unavailable> + 8218
6    tmp5d3dv93i                        0x0000559c0ad58860 <unavailable> + 6240
7    libc.so.6                          0x00002baa67316460 __libc_start_main + 245
8    tmp5d3dv93i                        0x0000559c0ad58579 <unavailable> + 5497

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let len = digits.count
    if shift >= len {
        return String(digits.reversed())
    }
    let start = digits.index(digits.startIndex, offsetBy: shift)
    let end = digits.index(digits.endIndex, offsetBy: -shift)
    return String(digits[start..<end] + digits[digits.startIndex..<start] + digits[end..<digits.endIndex])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_65_circular_shift, completion 69 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b65a8ee8c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b65a8bdf561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b65a8bdf286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b65a8bdf13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b65a8bdebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmptxvh9jrw                        0x000055c07d206f2c <unavailable> + 7980
6    tmptxvh9jrw                        0x000055c07d206780 <unavailable> + 6016
7    libc.so.6                          0x00002b65a90d4460 __libc_start_main + 245
8    tmptxvh9jrw                        0x000055c07d206499 <unavailable> + 5273

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let count = digits.count
    if shift > count {
        return String(digits.reversed())
    }
    let start = digits.index(digits.startIndex, offsetBy: shift)
    let end = digits.index(digits.endIndex, offsetBy: -shift)
    return String(digits[start..<end])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_10_make_palindrome, completion 183 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b88a66d0c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b88a63c7561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b88a63c7286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b88a63c713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b88a63c6bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpv9db_dk2                        0x0000562031b7152d <unavailable> + 9517
6    tmpv9db_dk2                        0x0000562031b70985 <unavailable> + 6533
7    libc.so.6                          0x00002b88a68bc460 __libc_start_main + 245
8    tmpv9db_dk2                        0x0000562031b70689 <unavailable> + 5769

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    let string = string.lowercased()
    let string_length = string.count
    let string_characters = Array(string)
    var longest_palindrome_length = 0
    var longest_palindrome_start = 0
    var longest_palindrome_end = 0
    for i in 0..<string_length {
        var j = 0
        while i - j >= 0 && i + j < string_length && string_characters[i - j] == string_characters[i + j] {
            if j * 2 + 1 > longest_palindrome_length {
                longest_palindrome_length = j * 2 + 1
                longest_palindrome_start = i - j
                longest_palindrome_end = i + j
            }
            j += 1
        }
    }
    for i in 0..<string_length - 1 {
        var j = 0
        while i - j >= 0 && i + j + 1 < string_length && string_characters[i - j] == string_characters[i + j + 1] {
            if j * 2 + 2 > longest_palindrome_length {
                longest_palindrome_length = j * 2 + 2
                longest_palindrome_start = i - j
                longest_palindrome_end = i + j + 1
            }
            j += 1
        }
    }
    let prefix = String(string_characters[0..<longest_palindrome_start].reversed())
    let suffix = String(string_characters[longest_palindrome_end + 1..<string_length])
    return prefix + string + suffix
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
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_82_prime_length, completion 83 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 121 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 55 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_135_can_arrange, completion 9 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ad84a7a5c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad84a49c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad84a49c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad84a49c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad84a49bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3ntlqlao                        0x000055d9c64689c2 <unavailable> + 6594
6    tmp3ntlqlao                        0x000055d9c646881c <unavailable> + 6172
7    libc.so.6                          0x00002ad84a991460 __libc_start_main + 245
8    tmp3ntlqlao                        0x000055d9c64681a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// >>> can_arrange(arr: [1, 2, 4, 3, 5])
/// 3
/// >>> can_arrange(arr: [1, 2, 3])
/// -1
func can_arrange(arr: [Int]) -> Int {
    var max_index = -1
    for i in 1..<arr.count {
        if arr[i] <= arr[i - 1] {
            max_index = i
        }
    }
    return max_index
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
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)



// ----------- problem HumanEval_82_prime_length, completion 4 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ae1aaa37c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae1aa72e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae1aa72e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae1aa72e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae1aa72dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp0dbhho3q                        0x0000558d1a69afda <unavailable> + 8154
6    tmp0dbhho3q                        0x0000558d1a69a920 <unavailable> + 6432
7    libc.so.6                          0x00002ae1aac23460 __libc_start_main + 245
8    tmp0dbhho3q                        0x0000558d1a69a0c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 2 {
        return true
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 154 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 198 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 173 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 5 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 15 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_102_choose_num, completion 71 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_24_largest_divisor, completion 51 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002abe965bbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002abe962b2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002abe962b2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002abe962b213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002abe962b1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpmo6go20e                        0x000055aa32ec96c9 <unavailable> + 5833
6    tmpmo6go20e                        0x000055aa32ec92c8 <unavailable> + 4808
7    libc.so.6                          0x00002abe967a7460 __libc_start_main + 245
8    tmpmo6go20e                        0x000055aa32ec8fe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// For a given number n, find the largest number that divides n evenly, smaller than n
/// >>> largest_divisor(n: 15)
/// 5
func largest_divisor(n: Int) -> Int {
    var largest = 1
    for i in 2...n/2 {
        if n % i == 0 {
            largest = i
        }
    }
    return largest
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
            
assert(largest_divisor(n: 3) == 1)
assert(largest_divisor(n: 7) == 1)
assert(largest_divisor(n: 10) == 5)
assert(largest_divisor(n: 100) == 50)
assert(largest_divisor(n: 49) == 7)



// ----------- problem HumanEval_65_circular_shift, completion 42 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ba03e1aec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba03dea5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba03dea5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba03dea513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba03dea4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxiw7vim                        0x0000563d380c9e18 <unavailable> + 7704
6    tmpxxiw7vim                        0x0000563d380c9620 <unavailable> + 5664
7    libc.so.6                          0x00002ba03e39a460 __libc_start_main + 245
8    tmpxxiw7vim                        0x0000563d380c9339 <unavailable> + 4921

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let length = digits.count
    let shift = shift % length
    let left = digits.index(digits.startIndex, offsetBy: shift)
    let right = digits.index(digits.startIndex, offsetBy: length - shift)
    return String(digits[left..<right] + digits[digits.startIndex..<left])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_82_prime_length, completion 73 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 1 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 187 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b85a9981c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b85a9678561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b85a9678286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b85a967813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b85a9677bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpku2dzl2x                        0x000055d8c38ed006 <unavailable> + 8198
6    tmpku2dzl2x                        0x000055d8c38ec920 <unavailable> + 6432
7    libc.so.6                          0x00002b85a9b6d460 __libc_start_main + 245
8    tmpku2dzl2x                        0x000055d8c38ec0c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length-1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 67 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 91 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 8 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 26 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_40_triples_sum_to_zero, completion 12 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b527f3ffc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b527f0f6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b527f0f6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b527f0f613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b527f0f5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmppk2c4q74                        0x0000556454846f10 <unavailable> + 7952
6    tmppk2c4q74                        0x0000556454846aee <unavailable> + 6894
7    libc.so.6                          0x00002b527f5eb460 __libc_start_main + 245
8    tmppk2c4q74                        0x00005564548462c9 <unavailable> + 4809

*/
/* stdout = 

*/


/// triples_sum_to_zero takes an array of integers as an input.
/// it returns true if there are three distinct elements in the array that
/// sum to zero, and false otherwise.
/// >>> triples_sum_to_zero(l: [1, 3, 5, 0])
/// false
/// >>> triples_sum_to_zero(l: [1, 3, -2, 1])
/// true
/// >>> triples_sum_to_zero(l: [1, 2, 3, 7])
/// false
/// >>> triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7])
/// true
/// >>> triples_sum_to_zero(l: [1])
/// false
func triples_sum_to_zero(l: [Int]) -> Bool {
    var l = l
    l.sort()
    for i in 0..<l.count - 2 {
        var j = i + 1
        var k = l.count - 1
        while j < k {
            if l[i] + l[j] + l[k] == 0 {
                return true
            } else if l[i] + l[j] + l[k] < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    return false
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
            
assert(triples_sum_to_zero(l: [1, 3, 5, 0]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -1]) == false)
assert(triples_sum_to_zero(l: [1, 3, -2, 1]) == true)
assert(triples_sum_to_zero(l: [1, 2, 3, 7]) == false)
assert(triples_sum_to_zero(l: [1, 2, 5, 7]) == false)
assert(triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7]) == true)
assert(triples_sum_to_zero(l: [1]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -100]) == false)
assert(triples_sum_to_zero(l: [100, 3, 5, -100]) == false)



// ----------- problem HumanEval_96_count_up_to, completion 18 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b351648cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3516183561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3516183286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b351618313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3516182bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr464czot                        0x000055bb1459e139 <unavailable> + 8505
6    tmpr464czot                        0x000055bb1459d89f <unavailable> + 6303
7    libc.so.6                          0x00002b3516678460 __libc_start_main + 245
8    tmpr464czot                        0x000055bb1459d209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// >>> count_up_to(n: 5)
/// [2, 3]
/// >>> count_up_to(n: 11)
/// [2, 3, 5, 7]
/// >>> count_up_to(n: 0)
/// [] as [Int]
/// >>> count_up_to(n: 20)
/// [2, 3, 5, 7, 11, 13, 17, 19]
/// >>> count_up_to(n: 1)
/// [] as [Int]
/// >>> count_up_to(n: 18)
/// [2, 3, 5, 7, 11, 13, 17]
func count_up_to(n: Int) -> [Int] {
    var primes = [Int]()
    for i in 2..<n {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        if isPrime {
            primes.append(i)
        }
    }
    return primes
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
            
assert(count_up_to(n: 5) == [2, 3])
assert(count_up_to(n: 6) == [2, 3, 5])
assert(count_up_to(n: 7) == [2, 3, 5])
assert(count_up_to(n: 10) == [2, 3, 5, 7])
assert(count_up_to(n: 0) == [] as [Int])
assert(count_up_to(n: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
assert(count_up_to(n: 1) == [] as [Int])
assert(count_up_to(n: 18) == [2, 3, 5, 7, 11, 13, 17])
assert(count_up_to(n: 47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
assert(count_up_to(n: 101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])



// ----------- problem HumanEval_102_choose_num, completion 60 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_96_count_up_to, completion 60 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b351648cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3516183561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3516183286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b351618313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3516182bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr464czot                        0x000055bb1459e139 <unavailable> + 8505
6    tmpr464czot                        0x000055bb1459d89f <unavailable> + 6303
7    libc.so.6                          0x00002b3516678460 __libc_start_main + 245
8    tmpr464czot                        0x000055bb1459d209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// >>> count_up_to(n: 5)
/// [2, 3]
/// >>> count_up_to(n: 11)
/// [2, 3, 5, 7]
/// >>> count_up_to(n: 0)
/// [] as [Int]
/// >>> count_up_to(n: 20)
/// [2, 3, 5, 7, 11, 13, 17, 19]
/// >>> count_up_to(n: 1)
/// [] as [Int]
/// >>> count_up_to(n: 18)
/// [2, 3, 5, 7, 11, 13, 17]
func count_up_to(n: Int) -> [Int] {
    var primes = [Int]()
    for i in 2..<n {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        if isPrime {
            primes.append(i)
        }
    }
    return primes
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
            
assert(count_up_to(n: 5) == [2, 3])
assert(count_up_to(n: 6) == [2, 3, 5])
assert(count_up_to(n: 7) == [2, 3, 5])
assert(count_up_to(n: 10) == [2, 3, 5, 7])
assert(count_up_to(n: 0) == [] as [Int])
assert(count_up_to(n: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
assert(count_up_to(n: 1) == [] as [Int])
assert(count_up_to(n: 18) == [2, 3, 5, 7, 11, 13, 17])
assert(count_up_to(n: 47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
assert(count_up_to(n: 101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])



// ----------- problem HumanEval_96_count_up_to, completion 136 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b351648cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3516183561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3516183286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b351618313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3516182bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr464czot                        0x000055bb1459e139 <unavailable> + 8505
6    tmpr464czot                        0x000055bb1459d89f <unavailable> + 6303
7    libc.so.6                          0x00002b3516678460 __libc_start_main + 245
8    tmpr464czot                        0x000055bb1459d209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// >>> count_up_to(n: 5)
/// [2, 3]
/// >>> count_up_to(n: 11)
/// [2, 3, 5, 7]
/// >>> count_up_to(n: 0)
/// [] as [Int]
/// >>> count_up_to(n: 20)
/// [2, 3, 5, 7, 11, 13, 17, 19]
/// >>> count_up_to(n: 1)
/// [] as [Int]
/// >>> count_up_to(n: 18)
/// [2, 3, 5, 7, 11, 13, 17]
func count_up_to(n: Int) -> [Int] {
    var primes = [Int]()
    for i in 2..<n {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        if isPrime {
            primes.append(i)
        }
    }
    return primes
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
            
assert(count_up_to(n: 5) == [2, 3])
assert(count_up_to(n: 6) == [2, 3, 5])
assert(count_up_to(n: 7) == [2, 3, 5])
assert(count_up_to(n: 10) == [2, 3, 5, 7])
assert(count_up_to(n: 0) == [] as [Int])
assert(count_up_to(n: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
assert(count_up_to(n: 1) == [] as [Int])
assert(count_up_to(n: 18) == [2, 3, 5, 7, 11, 13, 17])
assert(count_up_to(n: 47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
assert(count_up_to(n: 101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])



// ----------- problem HumanEval_126_is_sorted, completion 100 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_135_can_arrange, completion 101 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ad84a7a5c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad84a49c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad84a49c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad84a49c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad84a49bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3ntlqlao                        0x000055d9c64689c2 <unavailable> + 6594
6    tmp3ntlqlao                        0x000055d9c646881c <unavailable> + 6172
7    libc.so.6                          0x00002ad84a991460 __libc_start_main + 245
8    tmp3ntlqlao                        0x000055d9c64681a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// >>> can_arrange(arr: [1, 2, 4, 3, 5])
/// 3
/// >>> can_arrange(arr: [1, 2, 3])
/// -1
func can_arrange(arr: [Int]) -> Int {
    var max_index = -1
    for i in 1..<arr.count {
        if arr[i] <= arr[i - 1] {
            max_index = i
        }
    }
    return max_index
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
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)



// ----------- problem HumanEval_82_prime_length, completion 50 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 156 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_10_make_palindrome, completion 6 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b9f7465ec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9f74355561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9f74355286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9f7435513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9f74354bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp6cklrpja                        0x0000561ad61284d4 <unavailable> + 9428
6    tmp6cklrpja                        0x0000561ad6127b45 <unavailable> + 6981
7    libc.so.6                          0x00002b9f7484a460 __libc_start_main + 245
8    tmp6cklrpja                        0x0000561ad6127849 <unavailable> + 6217

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    let string_length = string.count
    let string_characters = Array(string)
    var longest_palindrome_length = 0
    var longest_palindrome_end_index = 0
    var is_palindrome = Array(repeating: Array(repeating: false, count: string_length), count: string_length)
    for i in 0..<string_length {
        is_palindrome[i][i] = true
    }
    for i in 0..<string_length - 1 {
        if string_characters[i] == string_characters[i + 1] {
            is_palindrome[i][i + 1] = true
            longest_palindrome_length = 2
            longest_palindrome_end_index = i + 1
        }
    }
    for i in 3...string_length {
        for j in 0..<string_length - i + 1 {
            let k = j + i - 1
            if string_characters[j] == string_characters[k] && is_palindrome[j + 1][k - 1] {
                is_palindrome[j][k] = true
                longest_palindrome_length = i
                longest_palindrome_end_index = k
            }
        }
    }
    let palindrome_prefix = String(string_characters[0..<(string_length - longest_palindrome_length)])
    let palindrome_prefix_reversed = String(palindrome_prefix.reversed())
    return palindrome_prefix + palindrome_prefix_reversed + String(string_characters[longest_palindrome_end_index])
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
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_65_circular_shift, completion 8 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002aea6f167c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aea6ee5e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aea6ee5e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aea6ee5e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aea6ee5dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp9a1zjo7t                        0x000055a0d6cb5fd0 <unavailable> + 8144
6    tmp9a1zjo7t                        0x000055a0d6cb5810 <unavailable> + 6160
7    libc.so.6                          0x00002aea6f353460 __libc_start_main + 245
8    tmp9a1zjo7t                        0x000055a0d6cb5529 <unavailable> + 5417

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let length = digits.count
    if shift >= length {
        return String(digits.reversed())
    }
    let left = digits.index(digits.startIndex, offsetBy: shift)
    let right = digits.index(digits.startIndex, offsetBy: length - shift)
    return String(digits[left..<right] + digits[digits.startIndex..<left])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_126_is_sorted, completion 126 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_102_choose_num, completion 159 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_82_prime_length, completion 31 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 93 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b8d9490bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8d94602561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8d94602286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8d9460213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8d94601bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp_hggw6a3                        0x00005647f0c3cfee <unavailable> + 8174
6    tmp_hggw6a3                        0x00005647f0c3c920 <unavailable> + 6432
7    libc.so.6                          0x00002b8d94af7460 __libc_start_main + 245
8    tmp_hggw6a3                        0x00005647f0c3c0c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    if length == 2 {
        return true
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_73_smallest_change, completion 149 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b5a4afd4c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5a4accb561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5a4accb286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5a4accb13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5a4accabb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp_ayexkjv                        0x000055c7407286f5 <unavailable> + 9973
6    tmp_ayexkjv                        0x000055c740727960 <unavailable> + 6496
7    libc.so.6                          0x00002b5a4b1c0460 __libc_start_main + 245
8    tmp_ayexkjv                        0x000055c740727619 <unavailable> + 5657

*/
/* stdout = 

*/


/// Given an array arr of integers, find the minimum number of elements that
/// need to be changed to make the array palindromic. A palindromic array is an array that
/// is read the same backwards and forwards. In one change, you can change one element to any other element.
/// For example:
/// >>> smallest_change(arr: [1, 2, 3, 5, 4, 7, 9, 6])
/// 4
/// >>> smallest_change(arr: [1, 2, 3, 4, 3, 2, 2])
/// 1
/// >>> smallest_change(arr: [1, 2, 3, 2, 1])
/// 0
func smallest_change(arr: [Int]) -> Int {
    let n = arr.count
    var dp = Array(repeating: Array(repeating: 0, count: n), count: n)
    for i in 0..<n {
        dp[i][i] = 0
    }
    for i in 0..<n-1 {
        dp[i][i+1] = arr[i] == arr[i+1] ? 0 : 1
    }
    for i in stride(from: n-1, through: 0, by: -1) {
        for j in i+2..<n {
            if arr[i] == arr[j] {
                dp[i][j] = dp[i+1][j-1]
            } else {
                dp[i][j] = min(dp[i+1][j], dp[i][j-1]) + 1
            }
        }
    }
    return dp[0][n-1]
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
            
assert(smallest_change(arr: [1, 2, 3, 5, 4, 7, 9, 6]) == 4)
assert(smallest_change(arr: [1, 2, 3, 4, 3, 2, 2]) == 1)
assert(smallest_change(arr: [1, 4, 2]) == 1)
assert(smallest_change(arr: [1, 4, 4, 2]) == 1)
assert(smallest_change(arr: [1, 2, 3, 2, 1]) == 0)
assert(smallest_change(arr: [3, 1, 1, 3]) == 0)
assert(smallest_change(arr: [1]) == 0)
assert(smallest_change(arr: [0, 1]) == 1)



// ----------- problem HumanEval_126_is_sorted, completion 120 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 84 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 78 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 44 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b32384e3c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b32381da561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b32381da286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b32381da13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b32381d9bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpv5_ip56r                        0x00005646b2aedfca <unavailable> + 8138
6    tmpv5_ip56r                        0x00005646b2aed920 <unavailable> + 6432
7    libc.so.6                          0x00002b32386cf460 __libc_start_main + 245
8    tmpv5_ip56r                        0x00005646b2aed0c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 117 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ae1aaa37c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae1aa72e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae1aa72e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae1aa72e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae1aa72dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp0dbhho3q                        0x0000558d1a69afda <unavailable> + 8154
6    tmp0dbhho3q                        0x0000558d1a69a920 <unavailable> + 6432
7    libc.so.6                          0x00002ae1aac23460 __libc_start_main + 245
8    tmp0dbhho3q                        0x0000558d1a69a0c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 2 {
        return true
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 174 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 131 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 190 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b174ad22c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b174aa19561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b174aa19286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b174aa1913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b174aa18bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp_vps3lco                        0x0000559fd7ed3141 <unavailable> + 8513
6    tmp_vps3lco                        0x0000559fd7ed23c6 <unavailable> + 5062
7    libc.so.6                          0x00002b174af0e460 __libc_start_main + 245
8    tmp_vps3lco                        0x0000559fd7ed20c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 2 {
        return true
    }
    if length % 2 == 0 {
        return false
    }
    for i in 3...length/2 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 21 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_82_prime_length, completion 157 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_40_triples_sum_to_zero, completion 102 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b527f3ffc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b527f0f6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b527f0f6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b527f0f613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b527f0f5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmppk2c4q74                        0x0000556454846f10 <unavailable> + 7952
6    tmppk2c4q74                        0x0000556454846aee <unavailable> + 6894
7    libc.so.6                          0x00002b527f5eb460 __libc_start_main + 245
8    tmppk2c4q74                        0x00005564548462c9 <unavailable> + 4809

*/
/* stdout = 

*/


/// triples_sum_to_zero takes an array of integers as an input.
/// it returns true if there are three distinct elements in the array that
/// sum to zero, and false otherwise.
/// >>> triples_sum_to_zero(l: [1, 3, 5, 0])
/// false
/// >>> triples_sum_to_zero(l: [1, 3, -2, 1])
/// true
/// >>> triples_sum_to_zero(l: [1, 2, 3, 7])
/// false
/// >>> triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7])
/// true
/// >>> triples_sum_to_zero(l: [1])
/// false
func triples_sum_to_zero(l: [Int]) -> Bool {
    var l = l
    l.sort()
    for i in 0..<l.count - 2 {
        var j = i + 1
        var k = l.count - 1
        while j < k {
            if l[i] + l[j] + l[k] == 0 {
                return true
            } else if l[i] + l[j] + l[k] < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    return false
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
            
assert(triples_sum_to_zero(l: [1, 3, 5, 0]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -1]) == false)
assert(triples_sum_to_zero(l: [1, 3, -2, 1]) == true)
assert(triples_sum_to_zero(l: [1, 2, 3, 7]) == false)
assert(triples_sum_to_zero(l: [1, 2, 5, 7]) == false)
assert(triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7]) == true)
assert(triples_sum_to_zero(l: [1]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -100]) == false)
assert(triples_sum_to_zero(l: [100, 3, 5, -100]) == false)



// ----------- problem HumanEval_82_prime_length, completion 162 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_96_count_up_to, completion 29 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b5da363bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5da3332561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5da3332286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5da333213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5da3331bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpf79dax6w                        0x0000558bf56d50e4 <unavailable> + 8420
6    tmpf79dax6w                        0x0000558bf56d483f <unavailable> + 6207
7    libc.so.6                          0x00002b5da3827460 __libc_start_main + 245
8    tmpf79dax6w                        0x0000558bf56d41a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// >>> count_up_to(n: 5)
/// [2, 3]
/// >>> count_up_to(n: 11)
/// [2, 3, 5, 7]
/// >>> count_up_to(n: 0)
/// [] as [Int]
/// >>> count_up_to(n: 20)
/// [2, 3, 5, 7, 11, 13, 17, 19]
/// >>> count_up_to(n: 1)
/// [] as [Int]
/// >>> count_up_to(n: 18)
/// [2, 3, 5, 7, 11, 13, 17]
func count_up_to(n: Int) -> [Int] {
    var primes: [Int] = []
    for i in 2..<n {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        if isPrime {
            primes.append(i)
        }
    }
    return primes
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
            
assert(count_up_to(n: 5) == [2, 3])
assert(count_up_to(n: 6) == [2, 3, 5])
assert(count_up_to(n: 7) == [2, 3, 5])
assert(count_up_to(n: 10) == [2, 3, 5, 7])
assert(count_up_to(n: 0) == [] as [Int])
assert(count_up_to(n: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
assert(count_up_to(n: 1) == [] as [Int])
assert(count_up_to(n: 18) == [2, 3, 5, 7, 11, 13, 17])
assert(count_up_to(n: 47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
assert(count_up_to(n: 101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])



// ----------- problem HumanEval_126_is_sorted, completion 21 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 147 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 172 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_40_triples_sum_to_zero, completion 156 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b527f3ffc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b527f0f6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b527f0f6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b527f0f613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b527f0f5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmppk2c4q74                        0x0000556454846f10 <unavailable> + 7952
6    tmppk2c4q74                        0x0000556454846aee <unavailable> + 6894
7    libc.so.6                          0x00002b527f5eb460 __libc_start_main + 245
8    tmppk2c4q74                        0x00005564548462c9 <unavailable> + 4809

*/
/* stdout = 

*/


/// triples_sum_to_zero takes an array of integers as an input.
/// it returns true if there are three distinct elements in the array that
/// sum to zero, and false otherwise.
/// >>> triples_sum_to_zero(l: [1, 3, 5, 0])
/// false
/// >>> triples_sum_to_zero(l: [1, 3, -2, 1])
/// true
/// >>> triples_sum_to_zero(l: [1, 2, 3, 7])
/// false
/// >>> triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7])
/// true
/// >>> triples_sum_to_zero(l: [1])
/// false
func triples_sum_to_zero(l: [Int]) -> Bool {
    var l = l
    l.sort()
    for i in 0..<l.count - 2 {
        var j = i + 1
        var k = l.count - 1
        while j < k {
            if l[i] + l[j] + l[k] == 0 {
                return true
            } else if l[i] + l[j] + l[k] < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    return false
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
            
assert(triples_sum_to_zero(l: [1, 3, 5, 0]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -1]) == false)
assert(triples_sum_to_zero(l: [1, 3, -2, 1]) == true)
assert(triples_sum_to_zero(l: [1, 2, 3, 7]) == false)
assert(triples_sum_to_zero(l: [1, 2, 5, 7]) == false)
assert(triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7]) == true)
assert(triples_sum_to_zero(l: [1]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -100]) == false)
assert(triples_sum_to_zero(l: [100, 3, 5, -100]) == false)



// ----------- problem HumanEval_63_fibfib, completion 154 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b34d5ee2c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b34d5bd9561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b34d5bd9286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b34d5bd913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b34d5bd8bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmphb1kj06g                        0x000055e043ecf769 <unavailable> + 5993
6    tmphb1kj06g                        0x000055e043ecf2cb <unavailable> + 4811
7    libc.so.6                          0x00002b34d60ce460 __libc_start_main + 245
8    tmphb1kj06g                        0x000055e043ecefe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
/// fibfib(0) == 0
/// fibfib(1) == 0
/// fibfib(2) == 1
/// fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
/// Please write a function to efficiently compute the n-th element of the fibfib number sequence.
/// >>> fibfib(n: 1)
/// 0
/// >>> fibfib(n: 5)
/// 4
/// >>> fibfib(n: 8)
/// 24
func fibfib(n: Int) -> Int {
    var n1 = 0
    var n2 = 0
    var n3 = 1
    var n4 = 0
    for _ in 3...n {
        n4 = n1 + n2 + n3
        n1 = n2
        n2 = n3
        n3 = n4
    }
    return n4
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
            
assert(fibfib(n: 2) == 1)
assert(fibfib(n: 1) == 0)
assert(fibfib(n: 5) == 4)
assert(fibfib(n: 8) == 24)
assert(fibfib(n: 10) == 81)
assert(fibfib(n: 12) == 274)
assert(fibfib(n: 14) == 927)



// ----------- problem HumanEval_102_choose_num, completion 88 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_135_can_arrange, completion 191 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ae5b232cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae5b2023561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae5b2023286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae5b202313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae5b2022bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp4_pkis4h                        0x0000564f9ad969c2 <unavailable> + 6594
6    tmp4_pkis4h                        0x0000564f9ad9681c <unavailable> + 6172
7    libc.so.6                          0x00002ae5b2518460 __libc_start_main + 245
8    tmp4_pkis4h                        0x0000564f9ad961a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// >>> can_arrange(arr: [1, 2, 4, 3, 5])
/// 3
/// >>> can_arrange(arr: [1, 2, 3])
/// -1
func can_arrange(arr: [Int]) -> Int {
    var result = -1
    for i in 1..<arr.count {
        if arr[i] <= arr[i - 1] {
            result = i
        }
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
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)



// ----------- problem HumanEval_82_prime_length, completion 104 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 21 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b5c925afc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5c922a6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5c922a6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5c922a613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5c922a5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpz42g_5jl                        0x0000561bb68e1141 <unavailable> + 8513
6    tmpz42g_5jl                        0x0000561bb68e03c6 <unavailable> + 5062
7    libc.so.6                          0x00002b5c9279b460 __libc_start_main + 245
8    tmpz42g_5jl                        0x0000561bb68e00c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 2 {
        return true
    }
    if length % 2 == 0 {
        return false
    }
    for i in 3...length / 2 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_24_largest_divisor, completion 150 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b8a1938ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8a19081561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8a19081286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8a1908113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8a19080bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpyzrdfc4k                        0x0000561cf8dbc6c9 <unavailable> + 5833
6    tmpyzrdfc4k                        0x0000561cf8dbc2c8 <unavailable> + 4808
7    libc.so.6                          0x00002b8a19576460 __libc_start_main + 245
8    tmpyzrdfc4k                        0x0000561cf8dbbfe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// For a given number n, find the largest number that divides n evenly, smaller than n
/// >>> largest_divisor(n: 15)
/// 5
func largest_divisor(n: Int) -> Int {
    var largest_divisor = 1
    for i in 2...n/2 {
        if n % i == 0 {
            largest_divisor = i
        }
    }
    return largest_divisor
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
            
assert(largest_divisor(n: 3) == 1)
assert(largest_divisor(n: 7) == 1)
assert(largest_divisor(n: 10) == 5)
assert(largest_divisor(n: 100) == 50)
assert(largest_divisor(n: 49) == 7)



// ----------- problem HumanEval_126_is_sorted, completion 116 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_102_choose_num, completion 107 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_118_get_closest_vowel, completion 36 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa0ba37c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa0b72e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa0b72e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa0b72e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa0b72dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpd87uo_1k                        0x000055a6e323f838 <unavailable> + 10296
6    tmpd87uo_1k                        0x000055a6e323e696 <unavailable> + 5782
7    libc.so.6                          0x00002afa0bc23460 __libc_start_main + 245
8    tmpd87uo_1k                        0x000055a6e323e399 <unavailable> + 5017

*/
/* stdout = 

*/


/// You are given a word. Your task is to find the closest vowel that stands between 
/// two consonants from the right side of the word (case sensitive).
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition. 
/// You may assume that the given string contains English letter only.
/// Example:
/// >>> get_closest_vowel(word: "yogurt")
/// "u"
/// >>> get_closest_vowel(word: "FULL")
/// "U"
/// >>> get_closest_vowel(word: "quick")
/// ""
/// >>> get_closest_vowel(word: "ab")
/// ""
func get_closest_vowel(word: String) -> String {
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var result = ""
    var index = word.count - 1
    while index >= 0 {
        let char = word[word.index(word.startIndex, offsetBy: index)]
        if consonants.contains(char) {
            break
        }
        index -= 1
    }
    if index == 0 {
        return ""
    }
    for i in index - 1...0 {
        let char = word[word.index(word.startIndex, offsetBy: i)]
        if vowels.contains(char) {
            result = String(char)
            break
        }
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
            
assert(get_closest_vowel(word: "yogurt") == "u")
assert(get_closest_vowel(word: "full") == "u")
assert(get_closest_vowel(word: "easy") == "")
assert(get_closest_vowel(word: "eAsy") == "")
assert(get_closest_vowel(word: "ali") == "")
assert(get_closest_vowel(word: "bad") == "a")
assert(get_closest_vowel(word: "most") == "o")
assert(get_closest_vowel(word: "ab") == "")
assert(get_closest_vowel(word: "ba") == "")
assert(get_closest_vowel(word: "quick") == "")
assert(get_closest_vowel(word: "anime") == "i")
assert(get_closest_vowel(word: "Asia") == "")
assert(get_closest_vowel(word: "Above") == "o")



// ----------- problem HumanEval_135_can_arrange, completion 189 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ae5b232cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae5b2023561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae5b2023286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae5b202313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae5b2022bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp4_pkis4h                        0x0000564f9ad969c2 <unavailable> + 6594
6    tmp4_pkis4h                        0x0000564f9ad9681c <unavailable> + 6172
7    libc.so.6                          0x00002ae5b2518460 __libc_start_main + 245
8    tmp4_pkis4h                        0x0000564f9ad961a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// >>> can_arrange(arr: [1, 2, 4, 3, 5])
/// 3
/// >>> can_arrange(arr: [1, 2, 3])
/// -1
func can_arrange(arr: [Int]) -> Int {
    var result = -1
    for i in 1..<arr.count {
        if arr[i] <= arr[i - 1] {
            result = i
        }
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
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)



// ----------- problem HumanEval_65_circular_shift, completion 116 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ab1d1e87c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ab1d1b7e561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ab1d1b7e286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ab1d1b7e13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ab1d1b7dbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp4atc1gg8                        0x000055fdbd1eee18 <unavailable> + 7704
6    tmp4atc1gg8                        0x000055fdbd1ee620 <unavailable> + 5664
7    libc.so.6                          0x00002ab1d2073460 __libc_start_main + 245
8    tmp4atc1gg8                        0x000055fdbd1ee339 <unavailable> + 4921

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let string = String(x)
    let length = string.count
    let shift = shift % length
    let left = string.index(string.startIndex, offsetBy: shift)
    let right = string.index(string.startIndex, offsetBy: length - shift)
    return String(string[left..<right] + string[string.startIndex..<left])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_126_is_sorted, completion 114 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b87e2e48c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b87e2b3f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b87e2b3f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b87e2b3f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b87e2b3ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp2j1tn8nz                        0x000055c54ff9a0ee <unavailable> + 8430
6    tmp2j1tn8nz                        0x000055c54ff999d4 <unavailable> + 6612
7    libc.so.6                          0x00002b87e3034460 __libc_start_main + 245
8    tmp2j1tn8nz                        0x000055c54ff991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count-1 {
        if lst[i] > lst[i+1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_96_count_up_to, completion 128 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b351648cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3516183561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3516183286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b351618313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3516182bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr464czot                        0x000055bb1459e139 <unavailable> + 8505
6    tmpr464czot                        0x000055bb1459d89f <unavailable> + 6303
7    libc.so.6                          0x00002b3516678460 __libc_start_main + 245
8    tmpr464czot                        0x000055bb1459d209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// >>> count_up_to(n: 5)
/// [2, 3]
/// >>> count_up_to(n: 11)
/// [2, 3, 5, 7]
/// >>> count_up_to(n: 0)
/// [] as [Int]
/// >>> count_up_to(n: 20)
/// [2, 3, 5, 7, 11, 13, 17, 19]
/// >>> count_up_to(n: 1)
/// [] as [Int]
/// >>> count_up_to(n: 18)
/// [2, 3, 5, 7, 11, 13, 17]
func count_up_to(n: Int) -> [Int] {
    var primes = [Int]()
    for i in 2..<n {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        if isPrime {
            primes.append(i)
        }
    }
    return primes
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
            
assert(count_up_to(n: 5) == [2, 3])
assert(count_up_to(n: 6) == [2, 3, 5])
assert(count_up_to(n: 7) == [2, 3, 5])
assert(count_up_to(n: 10) == [2, 3, 5, 7])
assert(count_up_to(n: 0) == [] as [Int])
assert(count_up_to(n: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
assert(count_up_to(n: 1) == [] as [Int])
assert(count_up_to(n: 18) == [2, 3, 5, 7, 11, 13, 17])
assert(count_up_to(n: 47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
assert(count_up_to(n: 101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])



// ----------- problem HumanEval_82_prime_length, completion 95 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 14 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 169 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 159 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b85a9981c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b85a9678561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b85a9678286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b85a967813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b85a9677bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpku2dzl2x                        0x000055d8c38ed006 <unavailable> + 8198
6    tmpku2dzl2x                        0x000055d8c38ec920 <unavailable> + 6432
7    libc.so.6                          0x00002b85a9b6d460 __libc_start_main + 245
8    tmpku2dzl2x                        0x000055d8c38ec0c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length-1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 107 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 146 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 167 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 73 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_82_prime_length, completion 176 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 72 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_82_prime_length, completion 163 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b85a9981c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b85a9678561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b85a9678286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b85a967813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b85a9677bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpku2dzl2x                        0x000055d8c38ed006 <unavailable> + 8198
6    tmpku2dzl2x                        0x000055d8c38ec920 <unavailable> + 6432
7    libc.so.6                          0x00002b85a9b6d460 __libc_start_main + 245
8    tmpku2dzl2x                        0x000055d8c38ec0c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length-1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 90 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 119 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 56 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 32 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 9 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ae24429dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae243f94561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae243f94286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae243f9413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae243f93bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpc3deegt7                        0x00005608264610f3 <unavailable> + 8435
6    tmpc3deegt7                        0x00005608264609d4 <unavailable> + 6612
7    libc.so.6                          0x00002ae244489460 __libc_start_main + 245
8    tmpc3deegt7                        0x00005608264601a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    } else {
        for i in 0..<lst.count - 1 {
            if lst[i] > lst[i + 1] {
                return false
            }
        }
        return true
    }
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 105 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_102_choose_num, completion 135 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_82_prime_length, completion 177 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_10_make_palindrome, completion 130 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ab75f7ddc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ab75f4d4561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ab75f4d4286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ab75f4d413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ab75f4d3bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpcxjz7nob                        0x000055da39412492 <unavailable> + 9362
6    tmpcxjz7nob                        0x000055da39411b65 <unavailable> + 7013
7    libc.so.6                          0x00002ab75f9c9460 __libc_start_main + 245
8    tmpcxjz7nob                        0x000055da39411869 <unavailable> + 6249

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    let string = string.lowercased()
    let reversed = String(string.reversed())
    let string_length = string.count
    let reversed_length = reversed.count
    var longest_suffix_length = 0
    var longest_suffix_index = 0
    var longest_prefix_length = 0
    var longest_prefix_index = 0
    var table = Array(repeating: Array(repeating: 0, count: reversed_length + 1), count: string_length + 1)
    for i in 1...string_length {
        for j in 1...reversed_length {
            if string[string.index(string.startIndex, offsetBy: i - 1)] == reversed[reversed.index(reversed.startIndex, offsetBy: j - 1)] {
                table[i][j] = table[i - 1][j - 1] + 1
                if table[i][j] > longest_suffix_length {
                    longest_suffix_length = table[i][j]
                    longest_suffix_index = i
                }
            } else {
                table[i][j] = max(table[i - 1][j], table[i][j - 1])
            }
        }
    }
    for i in 1...string_length {
        if table[i][reversed_length] > longest_prefix_length {
            longest_prefix_length = table[i][reversed_length]
            longest_prefix_index = i
        }
    }
    let prefix = String(string[string.index(string.startIndex, offsetBy: 0)..<string.index(string.startIndex, offsetBy: longest_prefix_index)])
    let suffix = String(string[string.index(string.startIndex, offsetBy: longest_suffix_index)..<string.index(string.startIndex, offsetBy: string_length)])
    let reversed_prefix = String(prefix.reversed())
    return prefix + suffix + reversed_prefix
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
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_10_make_palindrome, completion 181 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b80fba04c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b80fb6fb561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b80fb6fb286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b80fb6fb13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b80fb6fabb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp7sijoz1q                        0x0000564837edb78c <unavailable> + 10124
6    tmp7sijoz1q                        0x0000564837edacee <unavailable> + 7406
7    libc.so.6                          0x00002b80fbbf0460 __libc_start_main + 245
8    tmp7sijoz1q                        0x0000564837eda909 <unavailable> + 6409

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    if string.isEmpty {
        return string
    }
    let string_length = string.count
    let string_array = Array(string)
    var longest_palindrome_length = 0
    var longest_palindrome_index = 0
    var is_palindrome = Array(repeating: Array(repeating: false, count: string_length), count: string_length)
    for i in 0..<string_length {
        is_palindrome[i][i] = true
        if i + 1 < string_length && string_array[i] == string_array[i + 1] {
            is_palindrome[i][i + 1] = true
            longest_palindrome_length = 2
            longest_palindrome_index = i
        }
    }
    for length in 3...string_length {
        for i in 0..<string_length - length + 1 {
            let j = i + length - 1
            if string_array[i] == string_array[j] && is_palindrome[i + 1][j - 1] {
                is_palindrome[i][j] = true
                longest_palindrome_length = length
                longest_palindrome_index = i
            }
        }
    }
    let prefix = string[string.startIndex..<string.index(string.startIndex, offsetBy: longest_palindrome_index)]
    let suffix = String(prefix.reversed())
    return string + suffix
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
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_126_is_sorted, completion 134 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 73 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 80 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 31 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 158 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 121 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_96_count_up_to, completion 26 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b351648cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3516183561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3516183286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b351618313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3516182bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr464czot                        0x000055bb1459e139 <unavailable> + 8505
6    tmpr464czot                        0x000055bb1459d89f <unavailable> + 6303
7    libc.so.6                          0x00002b3516678460 __libc_start_main + 245
8    tmpr464czot                        0x000055bb1459d209 <unavailable> + 4617

*/
/* stdout = 

*/


/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// >>> count_up_to(n: 5)
/// [2, 3]
/// >>> count_up_to(n: 11)
/// [2, 3, 5, 7]
/// >>> count_up_to(n: 0)
/// [] as [Int]
/// >>> count_up_to(n: 20)
/// [2, 3, 5, 7, 11, 13, 17, 19]
/// >>> count_up_to(n: 1)
/// [] as [Int]
/// >>> count_up_to(n: 18)
/// [2, 3, 5, 7, 11, 13, 17]
func count_up_to(n: Int) -> [Int] {
    var primes = [Int]()
    for i in 2..<n {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        if isPrime {
            primes.append(i)
        }
    }
    return primes
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
            
assert(count_up_to(n: 5) == [2, 3])
assert(count_up_to(n: 6) == [2, 3, 5])
assert(count_up_to(n: 7) == [2, 3, 5])
assert(count_up_to(n: 10) == [2, 3, 5, 7])
assert(count_up_to(n: 0) == [] as [Int])
assert(count_up_to(n: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
assert(count_up_to(n: 1) == [] as [Int])
assert(count_up_to(n: 18) == [2, 3, 5, 7, 11, 13, 17])
assert(count_up_to(n: 47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
assert(count_up_to(n: 101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])



// ----------- problem HumanEval_82_prime_length, completion 180 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_65_circular_shift, completion 126 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b2714e80c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2714b77561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2714b77286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b2714b7713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2714b76bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp4k824_j5                        0x000055b2a9f61dc5 <unavailable> + 7621
6    tmp4k824_j5                        0x000055b2a9f615f0 <unavailable> + 5616
7    libc.so.6                          0x00002b271506c460 __libc_start_main + 245
8    tmp4k824_j5                        0x000055b2a9f61309 <unavailable> + 4873

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let length = digits.count
    let shift = shift % length
    let start = digits.index(digits.startIndex, offsetBy: shift)
    let end = digits.index(digits.endIndex, offsetBy: -shift)
    let shifted = String(digits[start..<end]) + String(digits[digits.startIndex..<start])
    return shifted
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_126_is_sorted, completion 181 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b195974bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1959442561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1959442286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b195944213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1959441bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpw4zb28ar                        0x0000555c65cf50f3 <unavailable> + 8435
6    tmpw4zb28ar                        0x0000555c65cf49d4 <unavailable> + 6612
7    libc.so.6                          0x00002b1959937460 __libc_start_main + 245
8    tmpw4zb28ar                        0x0000555c65cf41a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count-1 {
        if lst[i] > lst[i+1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 128 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 19 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_94_skjkasdkd, completion 5 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3c631ccc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3c62ec3561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3c62ec3286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3c62ec313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3c62ec2bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpf1iqg3z7                        0x000055c01465417c <unavailable> + 8572
6    tmpf1iqg3z7                        0x000055c0146536b9 <unavailable> + 5817
7    libc.so.6                          0x00002b3c633b8460 __libc_start_main + 245
8    tmpf1iqg3z7                        0x000055c0146531a9 <unavailable> + 4521

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
    var maxPrime = 0
    for i in 0..<lst.count {
        if lst[i] > maxPrime {
            var isPrime = true
            for j in 2..<lst[i] {
                if lst[i] % j == 0 {
                    isPrime = false
                    break
                }
            }
            if isPrime {
                maxPrime = lst[i]
            }
        }
    }
    var sum = 0
    while maxPrime > 0 {
        sum += maxPrime % 10
        maxPrime /= 10
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



// ----------- problem HumanEval_73_smallest_change, completion 193 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b36e0a51c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b36e0748561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b36e0748286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b36e074813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b36e0747bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpuqcv9pb4                        0x00005587a07d96f5 <unavailable> + 9973
6    tmpuqcv9pb4                        0x00005587a07d8960 <unavailable> + 6496
7    libc.so.6                          0x00002b36e0c3d460 __libc_start_main + 245
8    tmpuqcv9pb4                        0x00005587a07d8619 <unavailable> + 5657

*/
/* stdout = 

*/


/// Given an array arr of integers, find the minimum number of elements that
/// need to be changed to make the array palindromic. A palindromic array is an array that
/// is read the same backwards and forwards. In one change, you can change one element to any other element.
/// For example:
/// >>> smallest_change(arr: [1, 2, 3, 5, 4, 7, 9, 6])
/// 4
/// >>> smallest_change(arr: [1, 2, 3, 4, 3, 2, 2])
/// 1
/// >>> smallest_change(arr: [1, 2, 3, 2, 1])
/// 0
func smallest_change(arr: [Int]) -> Int {
    let n = arr.count
    var dp = Array(repeating: Array(repeating: 0, count: n), count: n)
    for i in 0..<n {
        dp[i][i] = 0
    }
    for i in 0..<n-1 {
        dp[i][i+1] = arr[i] == arr[i+1] ? 0 : 1
    }
    for i in stride(from: n-1, through: 0, by: -1) {
        for j in i+2..<n {
            if arr[i] == arr[j] {
                dp[i][j] = dp[i+1][j-1]
            } else {
                dp[i][j] = 1 + min(dp[i+1][j], dp[i][j-1])
            }
        }
    }
    return dp[0][n-1]
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
            
assert(smallest_change(arr: [1, 2, 3, 5, 4, 7, 9, 6]) == 4)
assert(smallest_change(arr: [1, 2, 3, 4, 3, 2, 2]) == 1)
assert(smallest_change(arr: [1, 4, 2]) == 1)
assert(smallest_change(arr: [1, 4, 4, 2]) == 1)
assert(smallest_change(arr: [1, 2, 3, 2, 1]) == 0)
assert(smallest_change(arr: [3, 1, 1, 3]) == 0)
assert(smallest_change(arr: [1]) == 0)
assert(smallest_change(arr: [0, 1]) == 1)



// ----------- problem HumanEval_40_triples_sum_to_zero, completion 167 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b527f3ffc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b527f0f6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b527f0f6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b527f0f613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b527f0f5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmppk2c4q74                        0x0000556454846f10 <unavailable> + 7952
6    tmppk2c4q74                        0x0000556454846aee <unavailable> + 6894
7    libc.so.6                          0x00002b527f5eb460 __libc_start_main + 245
8    tmppk2c4q74                        0x00005564548462c9 <unavailable> + 4809

*/
/* stdout = 

*/


/// triples_sum_to_zero takes an array of integers as an input.
/// it returns true if there are three distinct elements in the array that
/// sum to zero, and false otherwise.
/// >>> triples_sum_to_zero(l: [1, 3, 5, 0])
/// false
/// >>> triples_sum_to_zero(l: [1, 3, -2, 1])
/// true
/// >>> triples_sum_to_zero(l: [1, 2, 3, 7])
/// false
/// >>> triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7])
/// true
/// >>> triples_sum_to_zero(l: [1])
/// false
func triples_sum_to_zero(l: [Int]) -> Bool {
    var l = l
    l.sort()
    for i in 0..<l.count - 2 {
        var j = i + 1
        var k = l.count - 1
        while j < k {
            if l[i] + l[j] + l[k] == 0 {
                return true
            } else if l[i] + l[j] + l[k] < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    return false
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
            
assert(triples_sum_to_zero(l: [1, 3, 5, 0]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -1]) == false)
assert(triples_sum_to_zero(l: [1, 3, -2, 1]) == true)
assert(triples_sum_to_zero(l: [1, 2, 3, 7]) == false)
assert(triples_sum_to_zero(l: [1, 2, 5, 7]) == false)
assert(triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7]) == true)
assert(triples_sum_to_zero(l: [1]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -100]) == false)
assert(triples_sum_to_zero(l: [100, 3, 5, -100]) == false)



// ----------- problem HumanEval_82_prime_length, completion 27 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_24_largest_divisor, completion 157 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b8a1938ac80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b8a19081561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b8a19081286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b8a1908113c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b8a19080bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpyzrdfc4k                        0x0000561cf8dbc6c9 <unavailable> + 5833
6    tmpyzrdfc4k                        0x0000561cf8dbc2c8 <unavailable> + 4808
7    libc.so.6                          0x00002b8a19576460 __libc_start_main + 245
8    tmpyzrdfc4k                        0x0000561cf8dbbfe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// For a given number n, find the largest number that divides n evenly, smaller than n
/// >>> largest_divisor(n: 15)
/// 5
func largest_divisor(n: Int) -> Int {
    var largest_divisor = 1
    for i in 2...n/2 {
        if n % i == 0 {
            largest_divisor = i
        }
    }
    return largest_divisor
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
            
assert(largest_divisor(n: 3) == 1)
assert(largest_divisor(n: 7) == 1)
assert(largest_divisor(n: 10) == 5)
assert(largest_divisor(n: 100) == 50)
assert(largest_divisor(n: 49) == 7)



// ----------- problem HumanEval_96_count_up_to, completion 120 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b5da363bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5da3332561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5da3332286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5da333213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5da3331bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpf79dax6w                        0x0000558bf56d50e4 <unavailable> + 8420
6    tmpf79dax6w                        0x0000558bf56d483f <unavailable> + 6207
7    libc.so.6                          0x00002b5da3827460 __libc_start_main + 245
8    tmpf79dax6w                        0x0000558bf56d41a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// >>> count_up_to(n: 5)
/// [2, 3]
/// >>> count_up_to(n: 11)
/// [2, 3, 5, 7]
/// >>> count_up_to(n: 0)
/// [] as [Int]
/// >>> count_up_to(n: 20)
/// [2, 3, 5, 7, 11, 13, 17, 19]
/// >>> count_up_to(n: 1)
/// [] as [Int]
/// >>> count_up_to(n: 18)
/// [2, 3, 5, 7, 11, 13, 17]
func count_up_to(n: Int) -> [Int] {
    var primes: [Int] = []
    for i in 2..<n {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        if isPrime {
            primes.append(i)
        }
    }
    return primes
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
            
assert(count_up_to(n: 5) == [2, 3])
assert(count_up_to(n: 6) == [2, 3, 5])
assert(count_up_to(n: 7) == [2, 3, 5])
assert(count_up_to(n: 10) == [2, 3, 5, 7])
assert(count_up_to(n: 0) == [] as [Int])
assert(count_up_to(n: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
assert(count_up_to(n: 1) == [] as [Int])
assert(count_up_to(n: 18) == [2, 3, 5, 7, 11, 13, 17])
assert(count_up_to(n: 47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
assert(count_up_to(n: 101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])



// ----------- problem HumanEval_82_prime_length, completion 113 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 111 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 195 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 72 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 43 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 179 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af40f6cdc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af40f3c4561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af40f3c4286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af40f3c413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af40f3c3bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp26sh9or8                        0x00005620d99637f0 <unavailable> + 6128
6    tmp26sh9or8                        0x00005620d9963350 <unavailable> + 4944
7    libc.so.6                          0x00002af40f8b9460 __libc_start_main + 245
8    tmp26sh9or8                        0x00005620d9962fe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var max_even = -1
    for i in x...y {
        if i % 2 == 0 {
            max_even = i
        }
    }
    return max_even
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_115_max_fill, completion 55 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b6a7c3d7c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b6a7c0ce561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b6a7c0ce286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b6a7c0ce13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b6a7c0cdbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp16ngcshh                        0x000056101f792171 <unavailable> + 8561
6    tmp16ngcshh                        0x000056101f791a6b <unavailable> + 6763
7    libc.so.6                          0x00002b6a7c5c3460 __libc_start_main + 245
8    tmp16ngcshh                        0x000056101f791369 <unavailable> + 4969

*/
/* stdout = 

*/


/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// >>> max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1)
/// 6
/// Example 2:
/// >>> max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2)
/// 5
/// Example 3:
/// >>> max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5)
/// 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var result = 0
    var max_height = 0
    for row in grid {
        max_height = max(max_height, row.reduce(0, +))
    }
    for height in 1...max_height {
        for row in grid {
            var row_result = 0
            for well in row {
                if well >= height {
                    row_result += 1
                }
            }
            result += row_result / capacity
            if row_result % capacity != 0 {
                result += 1
            }
        }
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
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)



// ----------- problem HumanEval_82_prime_length, completion 178 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 134 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 57 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 28 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 182 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 195 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_65_circular_shift, completion 128 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002aade0e18c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aade0b0f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aade0b0f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aade0b0f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aade0b0ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp2oquaq51                        0x0000564ffcb52fc8 <unavailable> + 8136
6    tmp2oquaq51                        0x0000564ffcb52810 <unavailable> + 6160
7    libc.so.6                          0x00002aade1004460 __libc_start_main + 245
8    tmp2oquaq51                        0x0000564ffcb52529 <unavailable> + 5417

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let n = digits.count
    if shift > n {
        return String(digits.reversed())
    }
    let left = digits.index(digits.startIndex, offsetBy: shift)
    let right = digits.index(digits.startIndex, offsetBy: n - shift)
    return String(digits[left..<right] + digits[digits.startIndex..<left])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_126_is_sorted, completion 80 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 118 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 70 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 14 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_82_prime_length, completion 49 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 25 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002aea35f8cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aea35c83561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aea35c83286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aea35c8313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aea35c82bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpn8q1t2yr                        0x00005588c5dd87f0 <unavailable> + 6128
6    tmpn8q1t2yr                        0x00005588c5dd8350 <unavailable> + 4944
7    libc.so.6                          0x00002aea36178460 __libc_start_main + 245
8    tmpn8q1t2yr                        0x00005588c5dd7fe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var max = -1
    for i in x...y {
        if i % 2 == 0 && i > max {
            max = i
        }
    }
    return max
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_82_prime_length, completion 65 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 65 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ba585a28c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba58571f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba58571f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba58571f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba58571ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpjkima892                        0x0000563f460b90f3 <unavailable> + 8435
6    tmpjkima892                        0x0000563f460b89d4 <unavailable> + 6612
7    libc.so.6                          0x00002ba585c14460 __libc_start_main + 245
8    tmpjkima892                        0x0000563f460b81a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] >= lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 138 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b9e43507c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9e431fe561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9e431fe286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9e431fe13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9e431fdbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgnebkm0f                        0x0000561a94554fca <unavailable> + 8138
6    tmpgnebkm0f                        0x0000561a94554920 <unavailable> + 6432
7    libc.so.6                          0x00002b9e436f3460 __libc_start_main + 245
8    tmpgnebkm0f                        0x0000561a945540c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    var isPrime = true
    for i in 2..<string.count {
        if string.count % i == 0 {
            isPrime = false
        }
    }
    return isPrime
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_14_all_prefixes, completion 88 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b2ca6ab6c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2ca67ad561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2ca67ad286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b2ca67ad13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2ca67acbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmphp1lw43u                        0x0000561c86b10e8a <unavailable> + 7818
6    tmphp1lw43u                        0x0000561c86b108f5 <unavailable> + 6389
7    libc.so.6                          0x00002b2ca6ca2460 __libc_start_main + 245
8    tmphp1lw43u                        0x0000561c86b105f9 <unavailable> + 5625

*/
/* stdout = 

*/


/// Return array of all prefixes from shortest to longest of the input string
/// >>> all_prefixes(string: "abc")
/// ["a", "ab", "abc"]
func all_prefixes(string: String) -> [String] {
    var prefixes = [String]()
    for i in 1...string.count {
        prefixes.append(String(string[..<string.index(string.startIndex, offsetBy: i)]))
    }
    return prefixes
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
            
assert(all_prefixes(string: "") == [] as [String])
assert(all_prefixes(string: "asdfgh") == ["a", "as", "asd", "asdf", "asdfg", "asdfgh"])
assert(all_prefixes(string: "WWW") == ["W", "WW", "WWW"])



// ----------- problem HumanEval_65_circular_shift, completion 12 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b211ae1cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b211ab13561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b211ab13286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b211ab1313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b211ab12bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpvi5ueu5v                        0x0000564778e32012 <unavailable> + 8210
6    tmpvi5ueu5v                        0x0000564778e31860 <unavailable> + 6240
7    libc.so.6                          0x00002b211b008460 __libc_start_main + 245
8    tmpvi5ueu5v                        0x0000564778e31579 <unavailable> + 5497

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let length = digits.count
    if shift > length {
        return String(digits.reversed())
    }
    let start = digits.index(digits.startIndex, offsetBy: shift)
    let end = digits.index(digits.endIndex, offsetBy: -shift)
    return String(digits[start..<end] + digits[digits.startIndex..<start] + digits[end..<digits.endIndex])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_82_prime_length, completion 3 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 157 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 113 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b87e2e48c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b87e2b3f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b87e2b3f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b87e2b3f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b87e2b3ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp2j1tn8nz                        0x000055c54ff9a0ee <unavailable> + 8430
6    tmp2j1tn8nz                        0x000055c54ff999d4 <unavailable> + 6612
7    libc.so.6                          0x00002b87e3034460 __libc_start_main + 245
8    tmp2j1tn8nz                        0x000055c54ff991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count-1 {
        if lst[i] > lst[i+1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_96_count_up_to, completion 83 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b5da363bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5da3332561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5da3332286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5da333213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5da3331bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpf79dax6w                        0x0000558bf56d50e4 <unavailable> + 8420
6    tmpf79dax6w                        0x0000558bf56d483f <unavailable> + 6207
7    libc.so.6                          0x00002b5da3827460 __libc_start_main + 245
8    tmpf79dax6w                        0x0000558bf56d41a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// >>> count_up_to(n: 5)
/// [2, 3]
/// >>> count_up_to(n: 11)
/// [2, 3, 5, 7]
/// >>> count_up_to(n: 0)
/// [] as [Int]
/// >>> count_up_to(n: 20)
/// [2, 3, 5, 7, 11, 13, 17, 19]
/// >>> count_up_to(n: 1)
/// [] as [Int]
/// >>> count_up_to(n: 18)
/// [2, 3, 5, 7, 11, 13, 17]
func count_up_to(n: Int) -> [Int] {
    var primes: [Int] = []
    for i in 2..<n {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
            }
        }
        if isPrime {
            primes.append(i)
        }
    }
    return primes
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
            
assert(count_up_to(n: 5) == [2, 3])
assert(count_up_to(n: 6) == [2, 3, 5])
assert(count_up_to(n: 7) == [2, 3, 5])
assert(count_up_to(n: 10) == [2, 3, 5, 7])
assert(count_up_to(n: 0) == [] as [Int])
assert(count_up_to(n: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
assert(count_up_to(n: 1) == [] as [Int])
assert(count_up_to(n: 18) == [2, 3, 5, 7, 11, 13, 17])
assert(count_up_to(n: 47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
assert(count_up_to(n: 101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])



// ----------- problem HumanEval_82_prime_length, completion 152 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 115 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 0 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b174ad22c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b174aa19561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b174aa19286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b174aa1913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b174aa18bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp_vps3lco                        0x0000559fd7ed3141 <unavailable> + 8513
6    tmp_vps3lco                        0x0000559fd7ed23c6 <unavailable> + 5062
7    libc.so.6                          0x00002b174af0e460 __libc_start_main + 245
8    tmp_vps3lco                        0x0000559fd7ed20c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 2 {
        return true
    }
    if length % 2 == 0 {
        return false
    }
    for i in 3...length/2 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 52 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 60 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 194 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 155 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_126_is_sorted, completion 138 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ba585a28c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba58571f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba58571f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba58571f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba58571ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpjkima892                        0x0000563f460b90f3 <unavailable> + 8435
6    tmpjkima892                        0x0000563f460b89d4 <unavailable> + 6612
7    libc.so.6                          0x00002ba585c14460 __libc_start_main + 245
8    tmpjkima892                        0x0000563f460b81a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] >= lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_102_choose_num, completion 64 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_126_is_sorted, completion 86 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b87e2e48c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b87e2b3f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b87e2b3f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b87e2b3f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b87e2b3ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp2j1tn8nz                        0x000055c54ff9a0ee <unavailable> + 8430
6    tmp2j1tn8nz                        0x000055c54ff999d4 <unavailable> + 6612
7    libc.so.6                          0x00002b87e3034460 __libc_start_main + 245
8    tmp2j1tn8nz                        0x000055c54ff991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count-1 {
        if lst[i] > lst[i+1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 10 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 13 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 56 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 175 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_126_is_sorted, completion 108 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b87e2e48c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b87e2b3f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b87e2b3f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b87e2b3f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b87e2b3ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp2j1tn8nz                        0x000055c54ff9a0ee <unavailable> + 8430
6    tmp2j1tn8nz                        0x000055c54ff999d4 <unavailable> + 6612
7    libc.so.6                          0x00002b87e3034460 __libc_start_main + 245
8    tmp2j1tn8nz                        0x000055c54ff991a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count-1 {
        if lst[i] > lst[i+1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_65_circular_shift, completion 198 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b1109261c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1108f58561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1108f58286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1108f5813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1108f57bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp1fgyr74b                        0x0000559d4cc00f2c <unavailable> + 7980
6    tmp1fgyr74b                        0x0000559d4cc00780 <unavailable> + 6016
7    libc.so.6                          0x00002b110944d460 __libc_start_main + 245
8    tmp1fgyr74b                        0x0000559d4cc00499 <unavailable> + 5273

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let length = digits.count
    if shift > length {
        return String(digits.reversed())
    }
    let start = digits.index(digits.startIndex, offsetBy: shift)
    let end = digits.index(digits.endIndex, offsetBy: -shift)
    return String(digits[start..<end])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_94_skjkasdkd, completion 196 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ac6174c8c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac6171bf561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac6171bf286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac6171bf13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac6171bebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp29551k0b                        0x0000562165987160 <unavailable> + 8544
6    tmp29551k0b                        0x0000562165986632 <unavailable> + 5682
7    libc.so.6                          0x00002ac6176b4460 __libc_start_main + 245
8    tmp29551k0b                        0x0000562165986269 <unavailable> + 4713

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
    var prime = false
    var sum = 0
    while !prime {
        prime = true
        for i in 2...max {
            if max % i == 0 {
                prime = false
                break
            }
        }
        if !prime {
            max -= 1
        }
    }
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



// ----------- problem HumanEval_82_prime_length, completion 188 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 6 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 142 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_135_can_arrange, completion 104 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002abd7da5bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002abd7d752561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002abd7d752286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002abd7d75213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002abd7d751bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3i_hfykn                        0x0000564da412c9c2 <unavailable> + 6594
6    tmp3i_hfykn                        0x0000564da412c81c <unavailable> + 6172
7    libc.so.6                          0x00002abd7dc47460 __libc_start_main + 245
8    tmp3i_hfykn                        0x0000564da412c1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// >>> can_arrange(arr: [1, 2, 4, 3, 5])
/// 3
/// >>> can_arrange(arr: [1, 2, 3])
/// -1
func can_arrange(arr: [Int]) -> Int {
    var maxIndex = -1
    for i in 1..<arr.count {
        if arr[i] <= arr[i - 1] {
            maxIndex = i
        }
    }
    return maxIndex
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
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)



// ----------- problem HumanEval_126_is_sorted, completion 149 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 45 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_31_is_prime, completion 187 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b38ca3a4c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b38ca09b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b38ca09b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b38ca09b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b38ca09abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp53ltbuva                        0x000056038c0e8b4b <unavailable> + 6987
6    tmp53ltbuva                        0x000056038c0e85fd <unavailable> + 5629
7    libc.so.6                          0x00002b38ca590460 __libc_start_main + 245
8    tmp53ltbuva                        0x000056038c0e7fe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// Return true if a given number is prime, and false otherwise.
/// >>> is_prime(n: 6)
/// false
/// >>> is_prime(n: 101)
/// true
/// >>> is_prime(n: 11)
/// true
/// >>> is_prime(n: 13441)
/// true
/// >>> is_prime(n: 61)
/// true
/// >>> is_prime(n: 4)
/// false
/// >>> is_prime(n: 1)
/// false
func is_prime(n: Int) -> Bool {
    if n == 1 {
        return false
    }
    if n == 2 {
        return true
    }
    if n % 2 == 0 {
        return false
    }
    for i in 3...n/2 {
        if n % i == 0 {
            return false
        }
    }
    return true
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
            
assert(is_prime(n: 6) == false)
assert(is_prime(n: 101) == true)
assert(is_prime(n: 11) == true)
assert(is_prime(n: 13441) == true)
assert(is_prime(n: 61) == true)
assert(is_prime(n: 4) == false)
assert(is_prime(n: 1) == false)
assert(is_prime(n: 5) == true)
assert(is_prime(n: 11) == true)
assert(is_prime(n: 17) == true)
assert(is_prime(n: 85) == false)
assert(is_prime(n: 77) == false)
assert(is_prime(n: 255379) == false)



// ----------- problem HumanEval_126_is_sorted, completion 171 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_147_get_max_triples, completion 166 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002aea7f106c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aea7edfd561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aea7edfd286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aea7edfd13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aea7edfcbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp9k594hnh                        0x0000557c32a1e85b <unavailable> + 6235
6    tmp9k594hnh                        0x0000557c32a1e2c8 <unavailable> + 4808
7    libc.so.6                          0x00002aea7f2f2460 __libc_start_main + 245
8    tmp9k594hnh                        0x0000557c32a1dfe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// You are given a positive integer n. You have to create an integer array a of length n.
/// For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
/// Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
/// and a[i] + a[j] + a[k] is a multiple of 3.
/// Example :
/// >>> get_max_triples(n: 5)
/// 1
/// Explanation: 
/// a = [1, 3, 7, 13, 21]
/// The only valid triple is (1, 7, 13).
func get_max_triples(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        for j in i+1...n {
            for k in j+1...n {
                if (i * i - i + 1 + j * j - j + 1 + k * k - k + 1) % 3 == 0 {
                    count += 1
                }
            }
        }
    }
    return count
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
            
assert(get_max_triples(n: 5) == 1)
assert(get_max_triples(n: 6) == 4)
assert(get_max_triples(n: 10) == 36)
assert(get_max_triples(n: 100) == 53361)



// ----------- problem HumanEval_82_prime_length, completion 196 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b9e43507c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b9e431fe561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b9e431fe286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b9e431fe13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b9e431fdbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpgnebkm0f                        0x0000561a94554fca <unavailable> + 8138
6    tmpgnebkm0f                        0x0000561a94554920 <unavailable> + 6432
7    libc.so.6                          0x00002b9e436f3460 __libc_start_main + 245
8    tmpgnebkm0f                        0x0000561a945540c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    var isPrime = true
    for i in 2..<string.count {
        if string.count % i == 0 {
            isPrime = false
        }
    }
    return isPrime
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 20 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_65_circular_shift, completion 17 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b2fa301dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2fa2d14561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2fa2d14286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b2fa2d1413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2fa2d13bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp1qecx69y                        0x0000564ec4a55fd0 <unavailable> + 8144
6    tmp1qecx69y                        0x0000564ec4a55810 <unavailable> + 6160
7    libc.so.6                          0x00002b2fa3209460 __libc_start_main + 245
8    tmp1qecx69y                        0x0000564ec4a55529 <unavailable> + 5417

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let n = digits.count
    if shift >= n {
        return String(digits.reversed())
    }
    let left = digits.index(digits.startIndex, offsetBy: shift)
    let right = digits.index(digits.startIndex, offsetBy: n - shift)
    return String(digits[left..<right] + digits[digits.startIndex..<left])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_82_prime_length, completion 166 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 84 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_10_make_palindrome, completion 172 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ad9198d7c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ad9195ce561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ad9195ce286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ad9195ce13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ad9195cdbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp9yoci9sl                        0x000055b907bc715b <unavailable> + 8539
6    tmp9yoci9sl                        0x000055b907bc69f5 <unavailable> + 6645
7    libc.so.6                          0x00002ad919ac3460 __libc_start_main + 245
8    tmp9yoci9sl                        0x000055b907bc66f9 <unavailable> + 5881

*/
/* stdout = 

*/


/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> make_palindrome(string: "")
/// ""
/// >>> make_palindrome(string: "cat")
/// "catac"
/// >>> make_palindrome(string: "cata")
/// "catac"
func make_palindrome(string: String) -> String {
    let string_length = string.count
    let string_chars = Array(string)
    var longest_palindrome_length = 0
    var longest_palindrome_index = 0
    var palindrome_lengths = [Int](repeating: 0, count: string_length)
    for i in 1..<string_length {
        let j = i - 1
        let k = i + 1
        if string_chars[j] == string_chars[i] {
            palindrome_lengths[i] = palindrome_lengths[j] + 2
            if palindrome_lengths[i] > longest_palindrome_length {
                longest_palindrome_length = palindrome_lengths[i]
                longest_palindrome_index = i
            }
        } else if string_chars[j] == string_chars[k] {
            palindrome_lengths[i] = palindrome_lengths[j] + 3
            if palindrome_lengths[i] > longest_palindrome_length {
                longest_palindrome_length = palindrome_lengths[i]
                longest_palindrome_index = i
            }
        }
    }
    let longest_palindrome_start = longest_palindrome_index - (longest_palindrome_length - 1) / 2
    let longest_palindrome_end = longest_palindrome_index + (longest_palindrome_length - 1) / 2
    let prefix = String(string_chars[0..<longest_palindrome_start].reversed())
    let suffix = String(string_chars[longest_palindrome_end+1..<string_length])
    return prefix + string + suffix
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
            
assert(make_palindrome(string: "") == "")
assert(make_palindrome(string: "x") == "x")
assert(make_palindrome(string: "xyz") == "xyzyx")
assert(make_palindrome(string: "xyx") == "xyx")
assert(make_palindrome(string: "jerry") == "jerryrrej")



// ----------- problem HumanEval_82_prime_length, completion 164 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_135_can_arrange, completion 187 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ae5b232cc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ae5b2023561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ae5b2023286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ae5b202313c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ae5b2022bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp4_pkis4h                        0x0000564f9ad969c2 <unavailable> + 6594
6    tmp4_pkis4h                        0x0000564f9ad9681c <unavailable> + 6172
7    libc.so.6                          0x00002ae5b2518460 __libc_start_main + 245
8    tmp4_pkis4h                        0x0000564f9ad961a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// >>> can_arrange(arr: [1, 2, 4, 3, 5])
/// 3
/// >>> can_arrange(arr: [1, 2, 3])
/// -1
func can_arrange(arr: [Int]) -> Int {
    var result = -1
    for i in 1..<arr.count {
        if arr[i] <= arr[i - 1] {
            result = i
        }
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
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)



// ----------- problem HumanEval_82_prime_length, completion 120 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002aece7261c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002aece6f58561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002aece6f58286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002aece6f5813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002aece6f57bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp_1k_rnph                        0x000055faab931fde <unavailable> + 8158
6    tmp_1k_rnph                        0x000055faab931920 <unavailable> + 6432
7    libc.so.6                          0x00002aece744d460 __libc_start_main + 245
8    tmp_1k_rnph                        0x000055faab9310c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    var isPrime = true
    let stringLength = string.count
    for i in 2..<stringLength {
        if stringLength % i == 0 {
            isPrime = false
        }
    }
    return isPrime
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 175 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 137 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 51 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 17 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 102 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_40_triples_sum_to_zero, completion 198 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002acebb390c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002acebb087561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002acebb087286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002acebb08713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002acebb086bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp80iao322                        0x0000555d148d8f46 <unavailable> + 8006
6    tmp80iao322                        0x0000555d148d8aee <unavailable> + 6894
7    libc.so.6                          0x00002acebb57c460 __libc_start_main + 245
8    tmp80iao322                        0x0000555d148d82c9 <unavailable> + 4809

*/
/* stdout = 

*/


/// triples_sum_to_zero takes an array of integers as an input.
/// it returns true if there are three distinct elements in the array that
/// sum to zero, and false otherwise.
/// >>> triples_sum_to_zero(l: [1, 3, 5, 0])
/// false
/// >>> triples_sum_to_zero(l: [1, 3, -2, 1])
/// true
/// >>> triples_sum_to_zero(l: [1, 2, 3, 7])
/// false
/// >>> triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7])
/// true
/// >>> triples_sum_to_zero(l: [1])
/// false
func triples_sum_to_zero(l: [Int]) -> Bool {
    var l = l
    l.sort()
    for i in 0..<l.count - 2 {
        let a = l[i]
        var j = i + 1
        var k = l.count - 1
        while j < k {
            let b = l[j]
            let c = l[k]
            if a + b + c == 0 {
                return true
            } else if a + b + c < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    return false
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
            
assert(triples_sum_to_zero(l: [1, 3, 5, 0]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -1]) == false)
assert(triples_sum_to_zero(l: [1, 3, -2, 1]) == true)
assert(triples_sum_to_zero(l: [1, 2, 3, 7]) == false)
assert(triples_sum_to_zero(l: [1, 2, 5, 7]) == false)
assert(triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7]) == true)
assert(triples_sum_to_zero(l: [1]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -100]) == false)
assert(triples_sum_to_zero(l: [100, 3, 5, -100]) == false)



// ----------- problem HumanEval_126_is_sorted, completion 117 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 46 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 23 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b14457bbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b14454b2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b14454b2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b14454b213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b14454b1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpguhrs5vj                        0x000055fe5bf430f3 <unavailable> + 8435
6    tmpguhrs5vj                        0x000055fe5bf429d4 <unavailable> + 6612
7    libc.so.6                          0x00002b14459a7460 __libc_start_main + 245
8    tmpguhrs5vj                        0x000055fe5bf421a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count-1 {
        if lst[i] >= lst[i+1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 124 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_135_can_arrange, completion 38 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002abd7da5bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002abd7d752561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002abd7d752286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002abd7d75213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002abd7d751bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3i_hfykn                        0x0000564da412c9c2 <unavailable> + 6594
6    tmp3i_hfykn                        0x0000564da412c81c <unavailable> + 6172
7    libc.so.6                          0x00002abd7dc47460 __libc_start_main + 245
8    tmp3i_hfykn                        0x0000564da412c1a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
/// Examples:
/// >>> can_arrange(arr: [1, 2, 4, 3, 5])
/// 3
/// >>> can_arrange(arr: [1, 2, 3])
/// -1
func can_arrange(arr: [Int]) -> Int {
    var maxIndex = -1
    for i in 1..<arr.count {
        if arr[i] <= arr[i - 1] {
            maxIndex = i
        }
    }
    return maxIndex
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
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)



// ----------- problem HumanEval_102_choose_num, completion 175 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_126_is_sorted, completion 97 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b195974bc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1959442561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1959442286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b195944213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1959441bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpw4zb28ar                        0x0000555c65cf50f3 <unavailable> + 8435
6    tmpw4zb28ar                        0x0000555c65cf49d4 <unavailable> + 6612
7    libc.so.6                          0x00002b1959937460 __libc_start_main + 245
8    tmpw4zb28ar                        0x0000555c65cf41a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count-1 {
        if lst[i] > lst[i+1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_40_triples_sum_to_zero, completion 94 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b527f3ffc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b527f0f6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b527f0f6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b527f0f613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b527f0f5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmppk2c4q74                        0x0000556454846f10 <unavailable> + 7952
6    tmppk2c4q74                        0x0000556454846aee <unavailable> + 6894
7    libc.so.6                          0x00002b527f5eb460 __libc_start_main + 245
8    tmppk2c4q74                        0x00005564548462c9 <unavailable> + 4809

*/
/* stdout = 

*/


/// triples_sum_to_zero takes an array of integers as an input.
/// it returns true if there are three distinct elements in the array that
/// sum to zero, and false otherwise.
/// >>> triples_sum_to_zero(l: [1, 3, 5, 0])
/// false
/// >>> triples_sum_to_zero(l: [1, 3, -2, 1])
/// true
/// >>> triples_sum_to_zero(l: [1, 2, 3, 7])
/// false
/// >>> triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7])
/// true
/// >>> triples_sum_to_zero(l: [1])
/// false
func triples_sum_to_zero(l: [Int]) -> Bool {
    var l = l
    l.sort()
    for i in 0..<l.count - 2 {
        var j = i + 1
        var k = l.count - 1
        while j < k {
            if l[i] + l[j] + l[k] == 0 {
                return true
            } else if l[i] + l[j] + l[k] < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    return false
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
            
assert(triples_sum_to_zero(l: [1, 3, 5, 0]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -1]) == false)
assert(triples_sum_to_zero(l: [1, 3, -2, 1]) == true)
assert(triples_sum_to_zero(l: [1, 2, 3, 7]) == false)
assert(triples_sum_to_zero(l: [1, 2, 5, 7]) == false)
assert(triples_sum_to_zero(l: [2, 4, -5, 3, 9, 7]) == true)
assert(triples_sum_to_zero(l: [1]) == false)
assert(triples_sum_to_zero(l: [1, 3, 5, -100]) == false)
assert(triples_sum_to_zero(l: [100, 3, 5, -100]) == false)



// ----------- problem HumanEval_126_is_sorted, completion 189 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_82_prime_length, completion 92 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b85a9981c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b85a9678561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b85a9678286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b85a967813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b85a9677bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpku2dzl2x                        0x000055d8c38ed006 <unavailable> + 8198
6    tmpku2dzl2x                        0x000055d8c38ec920 <unavailable> + 6432
7    libc.so.6                          0x00002b85a9b6d460 __libc_start_main + 245
8    tmpku2dzl2x                        0x000055d8c38ec0c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length-1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_18_how_many_times, completion 105 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ba3ec728c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ba3ec41f561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ba3ec41f286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ba3ec41f13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ba3ec41ebb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpq5lh9rde                        0x0000563addc8dbce <unavailable> + 7118
6    tmpq5lh9rde                        0x0000563addc8d650 <unavailable> + 5712
7    libc.so.6                          0x00002ba3ec914460 __libc_start_main + 245
8    tmpq5lh9rde                        0x0000563addc8d329 <unavailable> + 4905

*/
/* stdout = 

*/


/// Find how many times a given substring can be found in the original string. Count overlaping cases.
/// >>> how_many_times(string: "", substring: "a")
/// 0
/// >>> how_many_times(string: "aaa", substring: "a")
/// 3
/// >>> how_many_times(string: "aaaa", substring: "aa")
/// 3
func how_many_times(string: String, substring: String) -> Int {
    let count = string.count
    let subCount = substring.count
    var result = 0
    for i in 0...count-subCount {
        let start = string.index(string.startIndex, offsetBy: i)
        let end = string.index(string.startIndex, offsetBy: i+subCount)
        let range = start..<end
        if string[range] == substring {
            result += 1
        }
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
            
assert(how_many_times(string: "", substring: "x") == 0)
assert(how_many_times(string: "xyxyxyx", substring: "x") == 4)
assert(how_many_times(string: "cacacacac", substring: "cac") == 4)
assert(how_many_times(string: "john doe", substring: "john") == 1)



// ----------- problem HumanEval_82_prime_length, completion 123 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 86 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_1_separate_paren_groups, completion 87 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b2cb6be7c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2cb68de561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2cb68de286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b2cb68de13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2cb68ddbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmposq7tmx9                        0x00005613eba3c518 <unavailable> + 9496
6    tmposq7tmx9                        0x00005613eba3b9e6 <unavailable> + 6630
7    libc.so.6                          0x00002b2cb6dd3460 __libc_start_main + 245
8    tmposq7tmx9                        0x00005613eba3b6e9 <unavailable> + 5865

*/
/* stdout = 

*/


/// Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
/// separate those group into separate strings and return the array of those.
/// Separate groups are balanced (each open brace is properly closed) and not nested within each other
/// Ignore any spaces in the input string.
/// >>> separate_paren_groups(paren_string: "( ) (( )) (( )( ))")
/// ["()", "(())", "(()())"]
func separate_paren_groups(paren_string: String) -> [String] {
    var result = [String]()
    var paren_string = paren_string
    while paren_string.count > 0 {
        let first_paren = paren_string.firstIndex(of: "(") ?? paren_string.endIndex
        let last_paren = paren_string.lastIndex(of: ")") ?? paren_string.endIndex
        let paren_group = String(paren_string[first_paren..<last_paren])
        result.append(paren_group)
        paren_string = String(paren_string[last_paren...])
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
            
assert(separate_paren_groups(paren_string: "(()()) ((())) () ((())()())") == ["(()())", "((()))", "()", "((())()())"])
assert(separate_paren_groups(paren_string: "() (()) ((())) (((())))") == ["()", "(())", "((()))", "(((())))"])
assert(separate_paren_groups(paren_string: "(()(())((())))") == ["(()(())((())))"])
assert(separate_paren_groups(paren_string: "( ) (( )) (( )( ))") == ["()", "(())", "(()())"])



// ----------- problem HumanEval_65_circular_shift, completion 178 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b2fa301dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b2fa2d14561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b2fa2d14286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b2fa2d1413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b2fa2d13bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp1qecx69y                        0x0000564ec4a55fd0 <unavailable> + 8144
6    tmp1qecx69y                        0x0000564ec4a55810 <unavailable> + 6160
7    libc.so.6                          0x00002b2fa3209460 __libc_start_main + 245
8    tmp1qecx69y                        0x0000564ec4a55529 <unavailable> + 5417

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let n = digits.count
    if shift >= n {
        return String(digits.reversed())
    }
    let left = digits.index(digits.startIndex, offsetBy: shift)
    let right = digits.index(digits.startIndex, offsetBy: n - shift)
    return String(digits[left..<right] + digits[digits.startIndex..<left])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_82_prime_length, completion 74 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_102_choose_num, completion 162 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002af9652e1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af964fd8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af964fd8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af964fd813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af964fd7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpk1czjwyl                        0x0000562f5913b7f0 <unavailable> + 6128
6    tmpk1czjwyl                        0x0000562f5913b350 <unavailable> + 4944
7    libc.so.6                          0x00002af9654cd460 __libc_start_main + 245
8    tmpk1czjwyl                        0x0000562f5913afe9 <unavailable> + 4073

*/
/* stdout = 

*/


/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If 
/// there's no such number, then the function should return -1.
/// For example:
/// >>> choose_num(x: 12, y: 15)
/// 14
/// >>> choose_num(x: 13, y: 12)
/// -1
func choose_num(x: Int, y: Int) -> Int {
    var result = -1
    for i in x...y {
        if i % 2 == 0 {
            result = i
        }
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
            
assert(choose_num(x: 12, y: 15) == 14)
assert(choose_num(x: 13, y: 12) == -1)
assert(choose_num(x: 33, y: 12354) == 12354)
assert(choose_num(x: 5234, y: 5233) == -1)
assert(choose_num(x: 6, y: 29) == 28)
assert(choose_num(x: 27, y: 10) == -1)
assert(choose_num(x: 7, y: 7) == -1)
assert(choose_num(x: 546, y: 546) == 546)



// ----------- problem HumanEval_126_is_sorted, completion 61 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002afa980dbc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002afa97dd2561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002afa97dd2286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002afa97dd213c <unavailable> + 1433916
4    libswiftCore.so                    0x00002afa97dd1bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxxxyn5qn                        0x000055ab352f20f3 <unavailable> + 8435
6    tmpxxxyn5qn                        0x000055ab352f19d4 <unavailable> + 6612
7    libc.so.6                          0x00002afa982c7460 __libc_start_main + 245
8    tmpxxxyn5qn                        0x000055ab352f11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    if lst.count == 1 {
        return true
    }
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            return false
        }
    }
    return true
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)



// ----------- problem HumanEval_65_circular_shift, completion 185 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3289310c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3289007561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3289007286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b328900713c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3289006bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpw7t5cq20                        0x000055de5c8e7e18 <unavailable> + 7704
6    tmpw7t5cq20                        0x000055de5c8e7620 <unavailable> + 5664
7    libc.so.6                          0x00002b32894fc460 __libc_start_main + 245
8    tmpw7t5cq20                        0x000055de5c8e7339 <unavailable> + 4921

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    let len = digits.count
    let shift = shift % len
    let left = digits.index(digits.startIndex, offsetBy: shift)
    let right = digits.index(digits.startIndex, offsetBy: len - shift)
    return String(digits[left..<right] + digits[digits.startIndex..<left])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_65_circular_shift, completion 145 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ab05fe49c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ab05fb40561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ab05fb40286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ab05fb4013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ab05fb3fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpz4njintu                        0x00005581b02d7efa <unavailable> + 7930
6    tmpz4njintu                        0x00005581b02d7780 <unavailable> + 6016
7    libc.so.6                          0x00002ab060035460 __libc_start_main + 245
8    tmpz4njintu                        0x00005581b02d7499 <unavailable> + 5273

*/
/* stdout = 

*/


/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circular_shift(x: 12, shift: 1)
/// "21"
/// >>> circular_shift(x: 12, shift: 2)
/// "12"
func circular_shift(x: Int, shift: Int) -> String {
    let digits = String(x)
    if shift > digits.count {
        return String(digits.reversed())
    }
    let left = digits.index(digits.startIndex, offsetBy: shift)
    let right = digits.index(digits.endIndex, offsetBy: -shift)
    return String(digits[left..<right])
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
            
assert(circular_shift(x: 100, shift: 2) == "001")
assert(circular_shift(x: 12, shift: 2) == "12")
assert(circular_shift(x: 97, shift: 8) == "79")
assert(circular_shift(x: 12, shift: 1) == "21")
assert(circular_shift(x: 11, shift: 101) == "11")



// ----------- problem HumanEval_82_prime_length, completion 199 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/ClosedRange.swift:347: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b3100f39c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b3100c30561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b3100c30286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b3100c3013c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b3100c2fbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpr016gtoq                        0x00005599a1aa4006 <unavailable> + 8198
6    tmpr016gtoq                        0x00005599a1aa3920 <unavailable> + 6432
7    libc.so.6                          0x00002b3101125460 __libc_start_main + 245
8    tmpr016gtoq                        0x00005599a1aa30c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2...length - 1 {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_82_prime_length, completion 165 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002b33c7b65c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b33c785c561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b33c785c286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b33c785c13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b33c785bbb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmpxqmv4set                        0x000055b80e4a5fda <unavailable> + 8154
6    tmpxqmv4set                        0x000055b80e4a5920 <unavailable> + 6432
7    libc.so.6                          0x00002b33c7d51460 __libc_start_main + 245
8    tmpxqmv4set                        0x000055b80e4a50c9 <unavailable> + 4297

*/
/* stdout = 

*/


/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// >>> prime_length(string: "Hello")
/// true
/// >>> prime_length(string: "abcdcba")
/// true
/// >>> prime_length(string: "kittens")
/// true
/// >>> prime_length(string: "orange")
/// false
func prime_length(string: String) -> Bool {
    let length = string.count
    if length == 1 {
        return false
    }
    for i in 2..<length {
        if length % i == 0 {
            return false
        }
    }
    return true
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
            
assert(prime_length(string: "Hello") == true)
assert(prime_length(string: "abcdcba") == true)
assert(prime_length(string: "kittens") == true)
assert(prime_length(string: "orange") == false)
assert(prime_length(string: "wow") == true)
assert(prime_length(string: "world") == true)
assert(prime_length(string: "MadaM") == true)
assert(prime_length(string: "Wow") == true)
assert(prime_length(string: "") == false)
assert(prime_length(string: "HI") == true)
assert(prime_length(string: "go") == true)
assert(prime_length(string: "gogo") == false)
assert(prime_length(string: "aaaaaaaaaaaaaaa") == false)
assert(prime_length(string: "Madam") == true)
assert(prime_length(string: "M") == false)
assert(prime_length(string: "0") == false)



// ----------- problem HumanEval_126_is_sorted, completion 112 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Range.swift:743: Fatal error: Range requires lowerBound <= upperBound
Current stack trace:
0    libswiftCore.so                    0x00002ace6c854c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ace6c54b561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ace6c54b286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ace6c54b13c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ace6c54abb0 _assertionFailure(_:_:file:line:flags:) + 251
5    tmp3lv57n76                        0x000055e2934a20ee <unavailable> + 8430
6    tmp3lv57n76                        0x000055e2934a19d4 <unavailable> + 6612
7    libc.so.6                          0x00002ace6ca40460 __libc_start_main + 245
8    tmp3lv57n76                        0x000055e2934a11a9 <unavailable> + 4521

*/
/* stdout = 

*/


/// Given an array of numbers, return whether or not they are sorted
/// in ascending order. If array has more than 1 duplicate of the same
/// number, return false. Assume no negative numbers and only integers.
/// Examples
/// >>> is_sorted(lst: [5])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5])
/// false
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6])
/// true
/// >>> is_sorted(lst: [1, 2, 3, 4, 5, 6, 7])
/// true
/// >>> is_sorted(lst: [1, 3, 2, 4, 5, 6, 7])
/// false
/// >>> is_sorted(lst: [1, 2, 2, 3, 3, 4])
/// true
/// >>> is_sorted(lst: [1, 2, 2, 2, 3, 4])
/// false
func is_sorted(lst: [Int]) -> Bool {
    var sorted = true
    for i in 0..<lst.count - 1 {
        if lst[i] > lst[i + 1] {
            sorted = false
        }
    }
    return sorted
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
            
assert(is_sorted(lst: [5]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5]) == false)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6]) == true)
assert(is_sorted(lst: [1, 2, 3, 4, 5, 6, 7]) == true)
assert(is_sorted(lst: [1, 3, 2, 4, 5, 6, 7]) == false)
assert(is_sorted(lst: [] as [Int]) == true)
assert(is_sorted(lst: [1]) == true)
assert(is_sorted(lst: [3, 2, 1]) == false)
assert(is_sorted(lst: [1, 2, 2, 2, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 3, 3, 3, 4]) == false)
assert(is_sorted(lst: [1, 2, 2, 3, 3, 4]) == true)
assert(is_sorted(lst: [1, 2, 3, 4]) == true)




// ----------- problem HumanEval_5_intersperse, completion 56 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/RangeReplaceableCollection.swift:870: Fatal error: Can't remove last element from an empty collection
Current stack trace:
0    libswiftCore.so                    0x00002af84b212c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af84af09561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af84af09286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af84af0913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af84af08bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002af84b00ac1d <unavailable> + 2489373
6    tmpj7p7o8gz                        0x00005598e92b1a72 <unavailable> + 6770
7    tmpj7p7o8gz                        0x00005598e92b1572 <unavailable> + 5490
8    libc.so.6                          0x00002af84b3fe460 __libc_start_main + 245
9    tmpj7p7o8gz                        0x00005598e92b1279 <unavailable> + 4729

*/
/* stdout = 

*/


/// Insert a number 'delimeter' between every two consecutive elements of input array `numbers'
/// >>> intersperse(numbers: [] as [Int], delimeter: 4)
/// [] as [Int]
/// >>> intersperse(numbers: [1, 2, 3], delimeter: 4)
/// [1, 4, 2, 4, 3]
func intersperse(numbers: [Int], delimeter: Int) -> [Int] {
    var result: [Int] = []
    for number in numbers {
        result.append(number)
        result.append(delimeter)
    }
    result.removeLast()
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
            
assert(intersperse(numbers: [] as [Int], delimeter: 7) == [] as [Int])
assert(intersperse(numbers: [5, 6, 3, 2], delimeter: 8) == [5, 8, 6, 8, 3, 8, 2])
assert(intersperse(numbers: [2, 2, 2], delimeter: 2) == [2, 2, 2, 2, 2])



// ----------- problem HumanEval_70_strange_sort_list, completion 109 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/RangeReplaceableCollection.swift:870: Fatal error: Can't remove last element from an empty collection
Current stack trace:
0    libswiftCore.so                    0x00002b5fcb95dc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b5fcb654561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b5fcb654286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b5fcb65413c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b5fcb653bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002b5fcb755c1d <unavailable> + 2489373
6    tmpaiokhouo                        0x0000555afb798416 <unavailable> + 9238
7    tmpaiokhouo                        0x0000555afb79776b <unavailable> + 5995
8    libc.so.6                          0x00002b5fcbb49460 __libc_start_main + 245
9    tmpaiokhouo                        0x0000555afb797309 <unavailable> + 4873

*/
/* stdout = 

*/


/// Given array of integers, return array in strange order.
/// Strange sorting, is when you start with the minimum value,
/// then maximum of the remaining integers, then minimum and so on.
/// Examples:
/// >>> strange_sort_list(lst: [1, 2, 3, 4])
/// [1, 4, 2, 3]
/// >>> strange_sort_list(lst: [5, 5, 5, 5])
/// [5, 5, 5, 5]
/// >>> strange_sort_list(lst: [] as [Int])
/// [] as [Int]
func strange_sort_list(lst: [Int]) -> [Int] {
    var result = [Int]()
    var sorted = lst.sorted()
    var min = sorted.removeFirst()
    var max = sorted.removeLast()
    while !sorted.isEmpty {
        result.append(min)
        result.append(max)
        min = sorted.removeFirst()
        max = sorted.removeLast()
    }
    result.append(min)
    result.append(max)
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
            
assert(strange_sort_list(lst: [1, 2, 3, 4]) == [1, 4, 2, 3])
assert(strange_sort_list(lst: [5, 6, 7, 8, 9]) == [5, 9, 6, 8, 7])
assert(strange_sort_list(lst: [1, 2, 3, 4, 5]) == [1, 5, 2, 4, 3])
assert(strange_sort_list(lst: [5, 6, 7, 8, 9, 1]) == [1, 9, 5, 8, 6, 7])
assert(strange_sort_list(lst: [5, 5, 5, 5]) == [5, 5, 5, 5])
assert(strange_sort_list(lst: [] as [Int]) == [] as [Int])
assert(strange_sort_list(lst: [1, 2, 3, 4, 5, 6, 7, 8]) == [1, 8, 2, 7, 3, 6, 4, 5])
assert(strange_sort_list(lst: [0, 2, 2, 2, 5, 5, -5, -5]) == [-5, 5, -5, 5, 0, 2, 2, 2])
assert(strange_sort_list(lst: [111111]) == [111111])



// ----------- problem HumanEval_5_intersperse, completion 26 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/RangeReplaceableCollection.swift:870: Fatal error: Can't remove last element from an empty collection
Current stack trace:
0    libswiftCore.so                    0x00002af84b212c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af84af09561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af84af09286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af84af0913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af84af08bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002af84b00ac1d <unavailable> + 2489373
6    tmpj7p7o8gz                        0x00005598e92b1a72 <unavailable> + 6770
7    tmpj7p7o8gz                        0x00005598e92b1572 <unavailable> + 5490
8    libc.so.6                          0x00002af84b3fe460 __libc_start_main + 245
9    tmpj7p7o8gz                        0x00005598e92b1279 <unavailable> + 4729

*/
/* stdout = 

*/


/// Insert a number 'delimeter' between every two consecutive elements of input array `numbers'
/// >>> intersperse(numbers: [] as [Int], delimeter: 4)
/// [] as [Int]
/// >>> intersperse(numbers: [1, 2, 3], delimeter: 4)
/// [1, 4, 2, 4, 3]
func intersperse(numbers: [Int], delimeter: Int) -> [Int] {
    var result: [Int] = []
    for number in numbers {
        result.append(number)
        result.append(delimeter)
    }
    result.removeLast()
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
            
assert(intersperse(numbers: [] as [Int], delimeter: 7) == [] as [Int])
assert(intersperse(numbers: [5, 6, 3, 2], delimeter: 8) == [5, 8, 6, 8, 3, 8, 2])
assert(intersperse(numbers: [2, 2, 2], delimeter: 2) == [2, 2, 2, 2, 2])



// ----------- problem HumanEval_5_intersperse, completion 132 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/RangeReplaceableCollection.swift:870: Fatal error: Can't remove last element from an empty collection
Current stack trace:
0    libswiftCore.so                    0x00002af84b212c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af84af09561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af84af09286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af84af0913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af84af08bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002af84b00ac1d <unavailable> + 2489373
6    tmpj7p7o8gz                        0x00005598e92b1a72 <unavailable> + 6770
7    tmpj7p7o8gz                        0x00005598e92b1572 <unavailable> + 5490
8    libc.so.6                          0x00002af84b3fe460 __libc_start_main + 245
9    tmpj7p7o8gz                        0x00005598e92b1279 <unavailable> + 4729

*/
/* stdout = 

*/


/// Insert a number 'delimeter' between every two consecutive elements of input array `numbers'
/// >>> intersperse(numbers: [] as [Int], delimeter: 4)
/// [] as [Int]
/// >>> intersperse(numbers: [1, 2, 3], delimeter: 4)
/// [1, 4, 2, 4, 3]
func intersperse(numbers: [Int], delimeter: Int) -> [Int] {
    var result: [Int] = []
    for number in numbers {
        result.append(number)
        result.append(delimeter)
    }
    result.removeLast()
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
            
assert(intersperse(numbers: [] as [Int], delimeter: 7) == [] as [Int])
assert(intersperse(numbers: [5, 6, 3, 2], delimeter: 8) == [5, 8, 6, 8, 3, 8, 2])
assert(intersperse(numbers: [2, 2, 2], delimeter: 2) == [2, 2, 2, 2, 2])



// ----------- problem HumanEval_70_strange_sort_list, completion 3 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/RangeReplaceableCollection.swift:870: Fatal error: Can't remove last element from an empty collection
Current stack trace:
0    libswiftCore.so                    0x00002ab98915fc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ab988e56561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ab988e56286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ab988e5613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ab988e55bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002ab988f57c1d <unavailable> + 2489373
6    tmphix5l2op                        0x000055d476108416 <unavailable> + 9238
7    tmphix5l2op                        0x000055d47610776b <unavailable> + 5995
8    libc.so.6                          0x00002ab98934b460 __libc_start_main + 245
9    tmphix5l2op                        0x000055d476107309 <unavailable> + 4873

*/
/* stdout = 

*/


/// Given array of integers, return array in strange order.
/// Strange sorting, is when you start with the minimum value,
/// then maximum of the remaining integers, then minimum and so on.
/// Examples:
/// >>> strange_sort_list(lst: [1, 2, 3, 4])
/// [1, 4, 2, 3]
/// >>> strange_sort_list(lst: [5, 5, 5, 5])
/// [5, 5, 5, 5]
/// >>> strange_sort_list(lst: [] as [Int])
/// [] as [Int]
func strange_sort_list(lst: [Int]) -> [Int] {
    var result = [Int]()
    var sorted = lst.sorted()
    var min = sorted.removeFirst()
    var max = sorted.removeLast()
    while !sorted.isEmpty {
        result.append(min)
        min = sorted.removeFirst()
        result.append(max)
        max = sorted.removeLast()
    }
    result.append(min)
    result.append(max)
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
            
assert(strange_sort_list(lst: [1, 2, 3, 4]) == [1, 4, 2, 3])
assert(strange_sort_list(lst: [5, 6, 7, 8, 9]) == [5, 9, 6, 8, 7])
assert(strange_sort_list(lst: [1, 2, 3, 4, 5]) == [1, 5, 2, 4, 3])
assert(strange_sort_list(lst: [5, 6, 7, 8, 9, 1]) == [1, 9, 5, 8, 6, 7])
assert(strange_sort_list(lst: [5, 5, 5, 5]) == [5, 5, 5, 5])
assert(strange_sort_list(lst: [] as [Int]) == [] as [Int])
assert(strange_sort_list(lst: [1, 2, 3, 4, 5, 6, 7, 8]) == [1, 8, 2, 7, 3, 6, 4, 5])
assert(strange_sort_list(lst: [0, 2, 2, 2, 5, 5, -5, -5]) == [-5, 5, -5, 5, 0, 2, 2, 2])
assert(strange_sort_list(lst: [111111]) == [111111])



// ----------- problem HumanEval_5_intersperse, completion 93 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/RangeReplaceableCollection.swift:870: Fatal error: Can't remove last element from an empty collection
Current stack trace:
0    libswiftCore.so                    0x00002af84b212c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002af84af09561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002af84af09286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002af84af0913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002af84af08bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002af84b00ac1d <unavailable> + 2489373
6    tmpj7p7o8gz                        0x00005598e92b1a72 <unavailable> + 6770
7    tmpj7p7o8gz                        0x00005598e92b1572 <unavailable> + 5490
8    libc.so.6                          0x00002af84b3fe460 __libc_start_main + 245
9    tmpj7p7o8gz                        0x00005598e92b1279 <unavailable> + 4729

*/
/* stdout = 

*/


/// Insert a number 'delimeter' between every two consecutive elements of input array `numbers'
/// >>> intersperse(numbers: [] as [Int], delimeter: 4)
/// [] as [Int]
/// >>> intersperse(numbers: [1, 2, 3], delimeter: 4)
/// [1, 4, 2, 4, 3]
func intersperse(numbers: [Int], delimeter: Int) -> [Int] {
    var result: [Int] = []
    for number in numbers {
        result.append(number)
        result.append(delimeter)
    }
    result.removeLast()
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
            
assert(intersperse(numbers: [] as [Int], delimeter: 7) == [] as [Int])
assert(intersperse(numbers: [5, 6, 3, 2], delimeter: 8) == [5, 8, 6, 8, 3, 8, 2])
assert(intersperse(numbers: [2, 2, 2], delimeter: 2) == [2, 2, 2, 2, 2])




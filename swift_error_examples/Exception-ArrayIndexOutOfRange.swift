// ----------- problem HumanEval_37_sort_even, completion 99 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Array.swift:418: Fatal error: Array index is out of range
Current stack trace:
0    libswiftCore.so                    0x00002b833b8efc80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b833b5e6561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b833b5e6286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b833b5e613c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b833b5e5bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002b833b5cf196 <unavailable> + 1339798
6    libswiftCore.so                    0x00002b833b820457 <unavailable> + 3769431
7    libswiftCore.so                    0x00002b833b61b911 <unavailable> + 1653009
8    libswiftCore.so                    0x00002b833b6e27c0 MutableCollection.subscript.getter + 212
9    tmpl5juzqcu                        0x000055af87ca431f <unavailable> + 8991
10   tmpl5juzqcu                        0x000055af87ca3a84 <unavailable> + 6788
11   libc.so.6                          0x00002b833badb460 __libc_start_main + 245
12   tmpl5juzqcu                        0x000055af87ca3769 <unavailable> + 5993

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l = l
    var even_indices = [Int]()
    for (index, _) in l.enumerated() {
        if index % 2 == 0 {
            even_indices.append(index)
        }
    }
    for index in even_indices {
        let sub_array = l[index...index + 1]
        let sorted_sub_array = sub_array.sorted()
        l[index] = sorted_sub_array[0]
        l[index + 1] = sorted_sub_array[1]
    }
    return l
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_37_sort_even, completion 47 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Array.swift:418: Fatal error: Array index is out of range
Current stack trace:
0    libswiftCore.so                    0x00002b628a3c1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b628a0b8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b628a0b8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b628a0b813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b628a0b7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002b628a0a1196 <unavailable> + 1339798
6    libswiftCore.so                    0x00002b628a2f2457 <unavailable> + 3769431
7    libswiftCore.so                    0x00002b628a0ed911 <unavailable> + 1653009
8    libswiftCore.so                    0x00002b628a1b47c0 MutableCollection.subscript.getter + 212
9    tmpcujutury                        0x0000559b8f5a2f9e <unavailable> + 8094
10   tmpcujutury                        0x0000559b8f5a28b4 <unavailable> + 6324
11   libc.so.6                          0x00002b628a5ad460 __libc_start_main + 245
12   tmpcujutury                        0x0000559b8f5a2599 <unavailable> + 5529

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l = l
    for i in stride(from: 0, to: l.count, by: 2) {
        l[i] = l[i...i+1].sorted()[0]
    }
    return l
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])



// ----------- problem HumanEval_37_sort_even, completion 50 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Array.swift:418: Fatal error: Array index is out of range
Current stack trace:
0    libswiftCore.so                    0x00002b628a3c1c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b628a0b8561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b628a0b8286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b628a0b813c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b628a0b7bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002b628a0a1196 <unavailable> + 1339798
6    libswiftCore.so                    0x00002b628a2f2457 <unavailable> + 3769431
7    libswiftCore.so                    0x00002b628a0ed911 <unavailable> + 1653009
8    libswiftCore.so                    0x00002b628a1b47c0 MutableCollection.subscript.getter + 212
9    tmpcujutury                        0x0000559b8f5a2f9e <unavailable> + 8094
10   tmpcujutury                        0x0000559b8f5a28b4 <unavailable> + 6324
11   libc.so.6                          0x00002b628a5ad460 __libc_start_main + 245
12   tmpcujutury                        0x0000559b8f5a2599 <unavailable> + 5529

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sort_even(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_even(l: [5, 6, 3, 4])
/// [3, 6, 5, 4]
func sort_even(l: [Int]) -> [Int] {
    var l = l
    for i in stride(from: 0, to: l.count, by: 2) {
        l[i] = l[i...i+1].sorted()[0]
    }
    return l
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_even(l: [1, 2, 3]) == [1, 2, 3])
assert(sort_even(l: [5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
assert(sort_even(l: [5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])




// ----------- problem HumanEval_33_sort_third, completion 24 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmptqawp55m.swift:15:18: error: overlapping accesses to 'l_prime', but modification requires exclusive access; consider calling MutableCollection.swapAt(_:_:)
            swap(&l_prime[j], &l_prime[j - 1])
            ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            l_prime.swapAt(j, j - 1)
/tmp/tmptqawp55m.swift:15:31: note: conflicting access is here
            swap(&l_prime[j], &l_prime[j - 1])
                              ^~~~~~~~~~~~~~~

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
/// to the values of the corresponding indicies of l, but sorted.
/// >>> sort_third(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_third(l: [5, 6, 3, 4, 8, 9, 2])
/// [2, 6, 3, 4, 8, 9, 5]
func sort_third(l: [Int]) -> [Int] {
    var l_prime = l
    var i = 2
    while i < l.count {
        var j = i
        while j > 0 && l_prime[j] < l_prime[j - 1] {
            swap(&l_prime[j], &l_prime[j - 1])
            j -= 1
        }
        i += 3
    }
    return l_prime
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(sort_third(l: [5, 6, 3, 4, 8, 9, 2]) == [2, 6, 3, 4, 8, 9, 5])
assert(sort_third(l: [5, 8, 3, 4, 6, 9, 2]) == [2, 8, 3, 4, 6, 9, 5])
assert(sort_third(l: [5, 6, 9, 4, 8, 3, 2]) == [2, 6, 9, 4, 8, 3, 5])
assert(sort_third(l: [5, 6, 3, 4, 8, 9, 2, 1]) == [2, 6, 3, 4, 8, 9, 5, 1])



// ----------- problem HumanEval_33_sort_third, completion 105 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmprq422113.swift:15:18: error: overlapping accesses to 'l', but modification requires exclusive access; consider calling MutableCollection.swapAt(_:_:)
            swap(&l[j], &l[j - 1])
            ~~~~~^~~~~~~~~~~~~~~~~
            l.swapAt(j, j - 1)
/tmp/tmprq422113.swift:15:25: note: conflicting access is here
            swap(&l[j], &l[j - 1])
                        ^~~~~~~~~

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
/// to the values of the corresponding indicies of l, but sorted.
/// >>> sort_third(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_third(l: [5, 6, 3, 4, 8, 9, 2])
/// [2, 6, 3, 4, 8, 9, 5]
func sort_third(l: [Int]) -> [Int] {
    var l = l
    var i = 2
    while i < l.count {
        var j = i
        while j > 0 && l[j] < l[j - 1] {
            swap(&l[j], &l[j - 1])
            j -= 1
        }
        i += 3
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
            
assert(sort_third(l: [5, 6, 3, 4, 8, 9, 2]) == [2, 6, 3, 4, 8, 9, 5])
assert(sort_third(l: [5, 8, 3, 4, 6, 9, 2]) == [2, 8, 3, 4, 6, 9, 5])
assert(sort_third(l: [5, 6, 9, 4, 8, 3, 2]) == [2, 6, 9, 4, 8, 3, 5])
assert(sort_third(l: [5, 6, 3, 4, 8, 9, 2, 1]) == [2, 6, 3, 4, 8, 9, 5, 1])



// ----------- problem HumanEval_33_sort_third, completion 79 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp3559_3kk.swift:15:18: error: overlapping accesses to 'l', but modification requires exclusive access; consider calling MutableCollection.swapAt(_:_:)
            swap(&l[j - 2], &l[j])
            ~~~~~^~~~~~~~~~~~~~~~~
            l.swapAt(j - 2, j)
/tmp/tmp3559_3kk.swift:15:29: note: conflicting access is here
            swap(&l[j - 2], &l[j])
                            ^~~~~

*/
/* stdout = 

*/


/// This function takes an array l and returns an array l' such that
/// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
/// to the values of the corresponding indicies of l, but sorted.
/// >>> sort_third(l: [1, 2, 3])
/// [1, 2, 3]
/// >>> sort_third(l: [5, 6, 3, 4, 8, 9, 2])
/// [2, 6, 3, 4, 8, 9, 5]
func sort_third(l: [Int]) -> [Int] {
    var l = l
    var i = 2
    while i < l.count {
        var j = i
        while j > 0 && l[j - 2] > l[j] {
            swap(&l[j - 2], &l[j])
            j -= 2
        }
        i += 3
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
            
assert(sort_third(l: [5, 6, 3, 4, 8, 9, 2]) == [2, 6, 3, 4, 8, 9, 5])
assert(sort_third(l: [5, 8, 3, 4, 6, 9, 2]) == [2, 8, 3, 4, 6, 9, 5])
assert(sort_third(l: [5, 6, 9, 4, 8, 3, 2]) == [2, 6, 9, 4, 8, 3, 5])
assert(sort_third(l: [5, 6, 3, 4, 8, 9, 2, 1]) == [2, 6, 3, 4, 8, 9, 5, 1])




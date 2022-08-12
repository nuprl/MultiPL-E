// ----------- problem HumanEval_129_minPath, completion 10 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp5n01z1vn.swift:27:9: warning: initialization of variable 'visited' was never used; consider replacing with assignment to '_' or removing it
    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
    ~~~~^~~~~~~
    _
/tmp/tmp5n01z1vn.swift:28:9: warning: initialization of variable 'minPath' was never used; consider replacing with assignment to '_' or removing it
    var minPath = Array(repeating: 0, count: k)
    ~~~~^~~~~~~
    _
/tmp/tmp5n01z1vn.swift:29:9: warning: initialization of variable 'minPathValue' was never used; consider replacing with assignment to '_' or removing it
    var minPathValue = Int.max
    ~~~~^~~~~~~~~~~~
    _
/tmp/tmp5n01z1vn.swift:30:9: warning: initialization of variable 'minPathIndex' was never used; consider replacing with assignment to '_' or removing it
    var minPathIndex = 0
    ~~~~^~~~~~~~~~~~
    _
/tmp/tmp5n01z1vn.swift:31:9: warning: initialization of variable 'minPaths' was never used; consider replacing with assignment to '_' or removing it
    var minPaths = [[Int]]()
    ~~~~^~~~~~~~
    _
/tmp/tmp5n01z1vn.swift:32:9: warning: initialization of variable 'minPathsValues' was never used; consider replacing with assignment to '_' or removing it
    var minPathsValues = [Int]()
    ~~~~^~~~~~~~~~~~~~
    _
/tmp/tmp5n01z1vn.swift:33:9: warning: initialization of variable 'minPathsIndexes' was never used; consider replacing with assignment to '_' or removing it
    var minPathsIndexes = [Int]()
    ~~~~^~~~~~~~~~~~~~~
    _
/tmp/tmp5n01z1vn.swift:34:9: warning: initialization of variable 'path' was never used; consider replacing with assignment to '_' or removing it
    var path = [Int]()
    ~~~~^~~~
    _
/tmp/tmp5n01z1vn.swift:35:9: warning: initialization of variable 'pathValue' was never used; consider replacing with assignment to '_' or removing it
    var pathValue = 0
    ~~~~^~~~~~~~~
    _
/tmp/tmp5n01z1vn.swift:36:9: warning: initialization of variable 'paths' was never used; consider replacing with assignment to '_' or removing 
*/
/* stdout = 

*/


/// Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
/// each cell of the grid contains a value. Every integer in the range [1, N * N]
/// inclusive appears exactly once on the cells of the grid.
/// You have to find the minimum path of length k in the grid. You can start
/// from any cell, and in each step you can move to any of the neighbor cells,
/// in other words, you can go to cells which share an edge with you current
/// cell.
/// Please note that a path of length k means visiting exactly k cells (not
/// necessarily distinct).
/// You CANNOT go off the grid.
/// A path A (of length k) is considered less than a path B (of length k) if
/// after making the ordered arrays of the values on the cells that A and B go
/// through (let's call them lst_A and lst_B), lst_A is lexicographically less
/// than lst_B, in other words, there exist an integer index i (1 <= i <= k)
/// such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
/// lst_A[j] = lst_B[j].
/// It is guaranteed that the answer is unique.
/// Return an ordered array of the values on the cells that the minimum path go through.
/// Examples:    
/// >>> minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3)
/// [1, 2, 1]
/// >>> minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1)
/// [1]
func minPath(grid: [[Int]], k: Int) -> [Int] {
    let n = grid.count
    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
    var minPath = Array(repeating: 0, count: k)
    var minPathValue = Int.max
    var minPathIndex = 0
    var minPaths = [[Int]]()
    var minPathsValues = [Int]()
    var minPathsIndexes = [Int]()
    var path = [Int]()
    var pathValue = 0
    var paths = [[Int]]()
    var pathsValues = [Int]()
    var pathsIndexes = [Int]()
    var pathIndex = 0
    var currentRow = 0
    var currentColumn = 0
    var currentValue = 0
    var currentIndex = 0
    var nextRow = 0
    var nextColumn = 0
    var nextValue = 0
    var nextIndex = 0
    var i = 0
    var j = 0
    var l = 0
    var m = 0
    var p = 0
    var q = 0
    var r = 0
    var s = 0
    var t = 0
    var u = 0
    var v = 0
    var w = 0
    var x = 0
    var y = 0
    var z = 0
    var a = 0
    var b = 0
    var c = 0
    var d = 0
    var e = 0
    var f = 0
    var g = 0
    var h = 0
    var ii = 0
    var jj = 0
    var kk = 0
    var ll = 0
    var mm = 0
    var nn = 0
    var oo = 0
    var pp = 0
    var qq = 0
    var rr = 0
    var ss = 0
    var tt = 0
    var uu = 0
    var vv = 0
    var ww = 0
    var xx = 0
    var yy = 0
    var zz = 0
    var aa = 0
    var bb = 0
    var cc = 0
    var dd = 0
    var ee = 0
    var ff = 0
   
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3) == [1, 2, 1])
assert(minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1) == [1])
assert(minPath(grid: [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]], k: 4) == [1, 2, 1, 2])
assert(minPath(grid: [[6, 4, 13, 10], [5, 7, 12, 1], [3, 16, 11, 15], [8, 14, 9, 2]], k: 7) == [1, 10, 1, 10, 1, 10, 1])
assert(minPath(grid: [[8, 14, 9, 2], [6, 4, 13, 15], [5, 7, 1, 12], [3, 10, 11, 16]], k: 5) == [1, 7, 1, 7, 1])
assert(minPath(grid: [[11, 8, 7, 2], [5, 16, 14, 4], [9, 3, 15, 6], [12, 13, 10, 1]], k: 9) == [1, 6, 1, 6, 1, 6, 1, 6, 1])
assert(minPath(grid: [[12, 13, 10, 1], [9, 3, 15, 6], [5, 16, 14, 4], [11, 8, 7, 2]], k: 12) == [1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6])
assert(minPath(grid: [[2, 7, 4], [3, 1, 5], [6, 8, 9]], k: 8) == [1, 3, 1, 3, 1, 3, 1, 3])
assert(minPath(grid: [[6, 1, 5], [3, 8, 9], [2, 7, 4]], k: 8) == [1, 5, 1, 5, 1, 5, 1, 5])
assert(minPath(grid: [[1, 2], [3, 4]], k: 10) == [1, 2, 1, 2, 1, 2, 1, 2, 1, 2])
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])



// ----------- problem HumanEval_119_match_parens, completion 43 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp28g79cg5.swift:16:9: warning: initialization of variable 's1' was never used; consider replacing with assignment to '_' or removing it
    var s1 = lst[0]
    ~~~~^~
    _
/tmp/tmp28g79cg5.swift:17:9: warning: initialization of variable 's2' was never used; consider replacing with assignment to '_' or removing it
    var s2 = lst[1]
    ~~~~^~
    _
/tmp/tmp28g79cg5.swift:18:9: warning: initialization of variable 's3' was never used; consider replacing with assignment to '_' or removing it
    var s3 = ""
    ~~~~^~
    _
/tmp/tmp28g79cg5.swift:19:9: warning: initialization of variable 's4' was never used; consider replacing with assignment to '_' or removing it
    var s4 = ""
    ~~~~^~
    _
/tmp/tmp28g79cg5.swift:20:9: warning: initialization of variable 's5' was never used; consider replacing with assignment to '_' or removing it
    var s5 = ""
    ~~~~^~
    _
/tmp/tmp28g79cg5.swift:21:9: warning: initialization of variable 's6' was never used; consider replacing with assignment to '_' or removing it
    var s6 = ""
    ~~~~^~
    _
/tmp/tmp28g79cg5.swift:22:9: warning: initialization of variable 's7' was never used; consider replacing with assignment to '_' or removing it
    var s7 = ""
    ~~~~^~
    _
/tmp/tmp28g79cg5.swift:23:9: warning: initialization of variable 's8' was never used; consider replacing with assignment to '_' or removing it
    var s8 = ""
    ~~~~^~
    _
/tmp/tmp28g79cg5.swift:24:9: warning: initialization of variable 's9' was never used; consider replacing with assignment to '_' or removing it
    var s9 = ""
    ~~~~^~
    _
/tmp/tmp28g79cg5.swift:25:9: warning: initialization of variable 's10' was never used; consider replacing with assignment to '_' or removing it
    var s10 = ""
    ~~~~^~~
    _
/tmp/tmp28g79cg5.swift:26:9: warning: initialization of variable 's11' was never used; consider replacing with assignment to '_' or removing it
    var s11 = ""
    ~~~~^~~
    _
/tmp/tmp28g79cg5.swift:27:9: warning: initialization of variable 's12' was never used; consider re
*/
/* stdout = 

*/


/// You are given an array of two strings, both strings consist of open
/// parentheses '(' or close parentheses ')' only.
/// Your job is to check if it is possible to concatenate the two strings in
/// some order, that the resulting string will be good.
/// A string S is considered to be good if and only if all parentheses in S
/// are balanced. For example: the string '(())()' is good, while the string
/// '())' is not.
/// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
/// Examples:
/// >>> match_parens(lst: ["()(", ")"])
/// "Yes"
/// >>> match_parens(lst: [")", ")"])
/// "No"
func match_parens(lst: [String]) -> String {
    var s1 = lst[0]
    var s2 = lst[1]
    var s3 = ""
    var s4 = ""
    var s5 = ""
    var s6 = ""
    var s7 = ""
    var s8 = ""
    var s9 = ""
    var s10 = ""
    var s11 = ""
    var s12 = ""
    var s13 = ""
    var s14 = ""
    var s15 = ""
    var s16 = ""
    var s17 = ""
    var s18 = ""
    var s19 = ""
    var s20 = ""
    var s21 = ""
    var s22 = ""
    var s23 = ""
    var s24 = ""
    var s25 = ""
    var s26 = ""
    var s27 = ""
    var s28 = ""
    var s29 = ""
    var s30 = ""
    var s31 = ""
    var s32 = ""
    var s33 = ""
    var s34 = ""
    var s35 = ""
    var s36 = ""
    var s37 = ""
    var s38 = ""
    var s39 = ""
    var s40 = ""
    var s41 = ""
    var s42 = ""
    var s43 = ""
    var s44 = ""
    var s45 = ""
    var s46 = ""
    var s47 = ""
    var s48 = ""
    var s49 = ""
    var s50 = ""
    var s51 = ""
    var s52 = ""
    var s53 = ""
    var s54 = ""
    var s55 = ""
    var s56 = ""
    var s57 = ""
    var s58 = ""
    var s59 = ""
    var s60 = ""
    var s61 = ""
    var s62 = ""
    var s63 = ""
    var s64 = ""
    var s65 = ""
    var s66 = ""
    var s67 = ""
    var s68 = ""
    var s69 = ""
    var s70 = ""
    var s71 = ""
    var s72 = ""
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(match_parens(lst: ["()(", ")"]) == "Yes")
assert(match_parens(lst: [")", ")"]) == "No")
assert(match_parens(lst: ["(()(())", "())())"]) == "No")
assert(match_parens(lst: [")())", "(()()("]) == "Yes")
assert(match_parens(lst: ["(())))", "(()())(("]) == "Yes")
assert(match_parens(lst: ["()", "())"]) == "No")
assert(match_parens(lst: ["(()(", "()))()"]) == "Yes")
assert(match_parens(lst: ["((((", "((())"]) == "No")
assert(match_parens(lst: [")(()", "(()("]) == "No")
assert(match_parens(lst: [")(", ")("]) == "No")
assert(match_parens(lst: ["(", ")"]) == "Yes")
assert(match_parens(lst: [")", "("]) == "Yes")



// ----------- problem HumanEval_118_get_closest_vowel, completion 30 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp_m3k9fto.swift:17:9: warning: initialization of immutable value 'vowels' was never used; consider replacing with assignment to '_' or removing it
    let vowels = ["a", "e", "i", "o", "u"]
    ~~~~^~~~~~
    _
/tmp/tmp_m3k9fto.swift:18:9: warning: initialization of immutable value 'consonants' was never used; consider replacing with assignment to '_' or removing it
    let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    ~~~~^~~~~~~~~~
    _
/tmp/tmp_m3k9fto.swift:19:9: warning: initialization of variable 'result' was never used; consider replacing with assignment to '_' or removing it
    var result = ""
    ~~~~^~~~~~
    _
/tmp/tmp_m3k9fto.swift:20:9: warning: initialization of variable 'is_vowel' was never used; consider replacing with assignment to '_' or removing it
    var is_vowel = false
    ~~~~^~~~~~~~
    _
/tmp/tmp_m3k9fto.swift:21:9: warning: initialization of variable 'is_consonant' was never used; consider replacing with assignment to '_' or removing it
    var is_consonant = false
    ~~~~^~~~~~~~~~~~
    _
/tmp/tmp_m3k9fto.swift:22:9: warning: initialization of variable 'is_first_vowel' was never used; consider replacing with assignment to '_' or removing it
    var is_first_vowel = false
    ~~~~^~~~~~~~~~~~~~
    _
/tmp/tmp_m3k9fto.swift:23:9: warning: initialization of variable 'is_first_consonant' was never used; consider replacing with assignment to '_' or removing it
    var is_first_consonant = false
    ~~~~^~~~~~~~~~~~~~~~~~
    _
/tmp/tmp_m3k9fto.swift:24:9: warning: initialization of variable 'is_second_vowel' was never used; consider replacing with assignment to '_' or removing it
    var is_second_vowel = false
    ~~~~^~~~~~~~~~~~~~~
    _
/tmp/tmp_m3k9fto.swift:25:9: warning: initialization of variable 'is_second_consonant' was never used; consider replacing with assignment to '_' or removing it
    var is_second_consonant = false
    ~~~~^~~~~~~~~~~~~~~~~~~
    _
/tmp/tmp_m3k9fto.swift:26:9: warning
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
    let vowels = ["a", "e", "i", "o", "u"]
    let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    var result = ""
    var is_vowel = false
    var is_consonant = false
    var is_first_vowel = false
    var is_first_consonant = false
    var is_second_vowel = false
    var is_second_consonant = false
    var is_third_vowel = false
    var is_third_consonant = false
    var is_fourth_vowel = false
    var is_fourth_consonant = false
    var is_fifth_vowel = false
    var is_fifth_consonant = false
    var is_sixth_vowel = false
    var is_sixth_consonant = false
    var is_seventh_vowel = false
    var is_seventh_consonant = false
    var is_eighth_vowel = false
    var is_eighth_consonant = false
    var is_ninth_vowel = false
    var is_ninth_consonant = false
    var is_tenth_vowel = false
    var is_tenth_consonant = false
    var is_eleventh_vowel = false
    var is_eleventh_consonant = false
    var is_twelfth_vowel = false
    var is_twelfth_consonant = false
    var is_thirteenth_vowel = false
    var is_thirteenth_consonant = false
    var is_fourteenth_vowel = false
    var is_fourteenth_consonant = false
    var is_fifteenth_vowel = false
    var is_fifteenth_consonant = false
    var is_sixteenth_vowel = false

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_75_is_multiply_prime, completion 25 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmp8oes1znj.swift:10:9: warning: initialization of variable 'is_prime' was never used; consider replacing with assignment to '_' or removing it
    var is_prime = true
    ~~~~^~~~~~~~
    _
/tmp/tmp8oes1znj.swift:11:9: warning: initialization of variable 'is_multiply_prime' was never used; consider replacing with assignment to '_' or removing it
    var is_multiply_prime = false
    ~~~~^~~~~~~~~~~~~~~~~
    _
/tmp/tmp8oes1znj.swift:12:9: warning: initialization of variable 'i' was never used; consider replacing with assignment to '_' or removing it
    var i = 2
    ~~~~^
    _
/tmp/tmp8oes1znj.swift:13:9: warning: initialization of variable 'j' was never used; consider replacing with assignment to '_' or removing it
    var j = 2
    ~~~~^
    _
/tmp/tmp8oes1znj.swift:14:9: warning: initialization of variable 'k' was never used; consider replacing with assignment to '_' or removing it
    var k = 2
    ~~~~^
    _
/tmp/tmp8oes1znj.swift:15:9: warning: initialization of variable 'l' was never used; consider replacing with assignment to '_' or removing it
    var l = 2
    ~~~~^
    _
/tmp/tmp8oes1znj.swift:16:9: warning: initialization of variable 'm' was never used; consider replacing with assignment to '_' or removing it
    var m = 2
    ~~~~^
    _
/tmp/tmp8oes1znj.swift:17:9: warning: initialization of variable 'n' was never used; consider replacing with assignment to '_' or removing it
    var n = 2
    ~~~~^
    _
/tmp/tmp8oes1znj.swift:18:9: warning: initialization of variable 'o' was never used; consider replacing with assignment to '_' or removing it
    var o = 2
    ~~~~^
    _
/tmp/tmp8oes1znj.swift:19:9: warning: initialization of variable 'p' was never used; consider replacing with assignment to '_' or removing it
    var p = 2
    ~~~~^
    _
/tmp/tmp8oes1znj.swift:20:9: warning: initialization of variable 'q' was never used; consider replacing with assignment to '_' or removing it
    var q = 2
    ~~~~^
    _
/tmp/tmp8oes1znj.swift:21:9: warning: initialization of variable 'r' was never u
*/
/* stdout = 

*/


/// Write a function that returns true if the given number is the multiplication of 3 prime numbers
/// and false otherwise.
/// Knowing that (a) is less then 100. 
/// Example:
/// >>> is_multiply_prime(a: 30)
/// true
/// 30 = 2 * 3 * 5
func is_multiply_prime(a: Int) -> Bool {
    var is_prime = true
    var is_multiply_prime = false
    var i = 2
    var j = 2
    var k = 2
    var l = 2
    var m = 2
    var n = 2
    var o = 2
    var p = 2
    var q = 2
    var r = 2
    var s = 2
    var t = 2
    var u = 2
    var v = 2
    var w = 2
    var x = 2
    var y = 2
    var z = 2
    var aa = 2
    var bb = 2
    var cc = 2
    var dd = 2
    var ee = 2
    var ff = 2
    var gg = 2
    var hh = 2
    var ii = 2
    var jj = 2
    var kk = 2
    var ll = 2
    var mm = 2
    var nn = 2
    var oo = 2
    var pp = 2
    var qq = 2
    var rr = 2
    var ss = 2
    var tt = 2
    var uu = 2
    var vv = 2
    var ww = 2
    var xx = 2
    var yy = 2
    var zz = 2
    var aaa = 2
    var bbb = 2
    var ccc = 2
    var ddd = 2
    var eee = 2
    var fff = 2
    var ggg = 2
    var hhh = 2
    var iii = 2
    var jjj = 2
    var kkk = 2
    var lll = 2
    var mmm = 2
    var nnn = 2
    var ooo = 2
    var ppp = 2
    var qqq = 2
    var rrr = 2
    var sss = 2
    var ttt = 2
    var uuu = 2
    var vvv = 2
    var www = 2
    var xxx = 2
    var yyy = 2
    var zzz = 2
    var aaaa = 2
    var bbbb = 2
    var cccc = 2
    var dddd = 2
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(is_multiply_prime(a: 5) == false)
assert(is_multiply_prime(a: 30) == true)
assert(is_multiply_prime(a: 8) == true)
assert(is_multiply_prime(a: 10) == false)
assert(is_multiply_prime(a: 125) == true)
assert(is_multiply_prime(a: 105) == true)
assert(is_multiply_prime(a: 126) == false)
assert(is_multiply_prime(a: 729) == false)
assert(is_multiply_prime(a: 891) == false)
assert(is_multiply_prime(a: 1001) == true)



// ----------- problem HumanEval_67_fruit_distribution, completion 85 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpaas76n90.swift:17:9: warning: initialization of variable 'mango' was never used; consider replacing with assignment to '_' or removing it
    var mango = n
    ~~~~^~~~~
    _
/tmp/tmpaas76n90.swift:18:9: warning: initialization of variable 'apple' was never used; consider replacing with assignment to '_' or removing it
    var apple = 0
    ~~~~^~~~~
    _
/tmp/tmpaas76n90.swift:19:9: warning: initialization of variable 'orange' was never used; consider replacing with assignment to '_' or removing it
    var orange = 0
    ~~~~^~~~~~
    _
/tmp/tmpaas76n90.swift:20:9: warning: initialization of variable 'i' was never used; consider replacing with assignment to '_' or removing it
    var i = 0
    ~~~~^
    _
/tmp/tmpaas76n90.swift:21:9: warning: initialization of variable 'j' was never used; consider replacing with assignment to '_' or removing it
    var j = 0
    ~~~~^
    _
/tmp/tmpaas76n90.swift:22:9: warning: initialization of variable 'k' was never used; consider replacing with assignment to '_' or removing it
    var k = 0
    ~~~~^
    _
/tmp/tmpaas76n90.swift:23:9: warning: initialization of variable 'l' was never used; consider replacing with assignment to '_' or removing it
    var l = 0
    ~~~~^
    _
/tmp/tmpaas76n90.swift:24:9: warning: initialization of variable 'm' was never used; consider replacing with assignment to '_' or removing it
    var m = 0
    ~~~~^
    _
/tmp/tmpaas76n90.swift:25:9: warning: initialization of variable 'n' was never used; consider replacing with assignment to '_' or removing it
    var n = 0
    ~~~~^
    _
/tmp/tmpaas76n90.swift:26:9: warning: initialization of variable 'o' was never used; consider replacing with assignment to '_' or removing it
    var o = 0
    ~~~~^
    _
/tmp/tmpaas76n90.swift:27:9: warning: initialization of variable 'p' was never used; consider replacing with assignment to '_' or removing it
    var p = 0
    ~~~~^
    _
/tmp/tmpaas76n90.swift:28:9: warning: initialization of variable 'q' was never used; consider replacing with assignme
*/
/* stdout = 

*/


/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// >>> fruit_distribution(s: "5 apples and 6 oranges", n: 19)
/// 8
/// >>> fruit_distribution(s: "0 apples and 1 oranges", n: 3)
/// 2
/// >>> fruit_distribution(s: "2 apples and 3 oranges", n: 100)
/// 95
/// >>> fruit_distribution(s: "100 apples and 1 oranges", n: 120)
/// 19
func fruit_distribution(s: String, n: Int) -> Int {
    var mango = n
    var apple = 0
    var orange = 0
    var i = 0
    var j = 0
    var k = 0
    var l = 0
    var m = 0
    var n = 0
    var o = 0
    var p = 0
    var q = 0
    var r = 0
    var s = 0
    var t = 0
    var u = 0
    var v = 0
    var w = 0
    var x = 0
    var y = 0
    var z = 0
    var a = 0
    var b = 0
    var c = 0
    var d = 0
    var e = 0
    var f = 0
    var g = 0
    var h = 0
    var ii = 0
    var jj = 0
    var kk = 0
    var ll = 0
    var mm = 0
    var nn = 0
    var oo = 0
    var pp = 0
    var qq = 0
    var rr = 0
    var ss = 0
    var tt = 0
    var uu = 0
    var vv = 0
    var ww = 0
    var xx = 0
    var yy = 0
    var zz = 0
    var aa = 0
    var bb = 0
    var cc = 0
    var dd = 0
    var ee = 0
    var ff = 0
    var gg = 0
    var hh = 0
    var iii = 0
    var jjj = 0
    var kkk = 0
    var lll = 0
    var mmm = 0
    var nnn = 0
    var ooo = 0
    var ppp = 0
    var qqq = 0
    var rrr = 0
    var sss = 0
    var ttt = 0
    var uuu = 0
    var vvv = 0
    var www = 0
    var xxx = 0
    var yyy = 0
    var zzz = 0
    var aaaa = 0
    var bbbb = 0
    var cccc = 0
    var dddd = 0
    var eeee = 0
   
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)



// ----------- problem HumanEval_129_minPath, completion 198 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpjdc27z5r.swift:27:9: warning: initialization of variable 'grid' was never used; consider replacing with assignment to '_' or removing it
    var grid = grid
    ~~~~^~~~
    _
/tmp/tmpjdc27z5r.swift:28:9: warning: initialization of variable 'minPath' was never used; consider replacing with assignment to '_' or removing it
    var minPath = [Int]()
    ~~~~^~~~~~~
    _
/tmp/tmpjdc27z5r.swift:29:9: warning: initialization of variable 'minSum' was never used; consider replacing with assignment to '_' or removing it
    var minSum = Int.max
    ~~~~^~~~~~
    _
/tmp/tmpjdc27z5r.swift:30:9: warning: initialization of variable 'minPaths' was never used; consider replacing with assignment to '_' or removing it
    var minPaths = [[Int]]()
    ~~~~^~~~~~~~
    _
/tmp/tmpjdc27z5r.swift:31:9: warning: initialization of variable 'visited' was never used; consider replacing with assignment to '_' or removing it
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
    ~~~~^~~~~~~
    _
/tmp/tmpjdc27z5r.swift:32:9: warning: initialization of variable 'path' was never used; consider replacing with assignment to '_' or removing it
    var path = [Int]()
    ~~~~^~~~
    _
/tmp/tmpjdc27z5r.swift:33:9: warning: initialization of variable 'sum' was never used; consider replacing with assignment to '_' or removing it
    var sum = 0
    ~~~~^~~
    _
/tmp/tmpjdc27z5r.swift:34:9: warning: initialization of variable 'row' was never used; consider replacing with assignment to '_' or removing it
    var row = 0
    ~~~~^~~
    _
/tmp/tmpjdc27z5r.swift:35:9: warning: initialization of variable 'col' was never used; consider replacing with assignment to '_' or removing it
    var col = 0
    ~~~~^~~
    _
/tmp/tmpjdc27z5r.swift:36:9: warning: initialization of variable 'pathLength' was never used; consider replacing with assignment to '_' or removing it
    var pathLength = 0
    ~~~~^~~~~~~~~~
    _
/tmp/tmpjdc27z5r.swift:37:9: warning: initialization of variable 'minPathLength' was never used; con
*/
/* stdout = 

*/


/// Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
/// each cell of the grid contains a value. Every integer in the range [1, N * N]
/// inclusive appears exactly once on the cells of the grid.
/// You have to find the minimum path of length k in the grid. You can start
/// from any cell, and in each step you can move to any of the neighbor cells,
/// in other words, you can go to cells which share an edge with you current
/// cell.
/// Please note that a path of length k means visiting exactly k cells (not
/// necessarily distinct).
/// You CANNOT go off the grid.
/// A path A (of length k) is considered less than a path B (of length k) if
/// after making the ordered arrays of the values on the cells that A and B go
/// through (let's call them lst_A and lst_B), lst_A is lexicographically less
/// than lst_B, in other words, there exist an integer index i (1 <= i <= k)
/// such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
/// lst_A[j] = lst_B[j].
/// It is guaranteed that the answer is unique.
/// Return an ordered array of the values on the cells that the minimum path go through.
/// Examples:    
/// >>> minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3)
/// [1, 2, 1]
/// >>> minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1)
/// [1]
func minPath(grid: [[Int]], k: Int) -> [Int] {
    let n = grid.count
    var grid = grid
    var minPath = [Int]()
    var minSum = Int.max
    var minPaths = [[Int]]()
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
    var path = [Int]()
    var sum = 0
    var row = 0
    var col = 0
    var pathLength = 0
    var minPathLength = Int.max
    var minPathsLength = [Int]()
    var minPathsSum = [Int]()
    var minPathsCount = 0
    var minPathsCounts = [Int]()
    var minPathsCountsSum = 0
    var minPathsCountsSums = [Int]()
    var minPathsCountsSumsSum = 0
    var minPathsCountsSumsSums = [Int]()
    var minPathsCountsSumsSumsSum = 0
    var minPathsCountsSumsSumsSums = [Int]()
    var minPathsCountsSumsSumsSumsSum = 0
    var minPathsCountsSumsSumsSumsSums = [Int]()
    var minPathsCountsSumsSumsSumsSumsSum = 0
    var minPathsCountsSumsSumsSumsSumsSums = [Int]()
    var minPathsCountsSumsSumsSumsSumsSumsSum = 0
    var minPathsCountsSumsSumsSumsSumsSumsSums = [Int]()
    var minPathsCountsSumsSumsSumsSumsSumsSumsSum = 0
    var minPathsCountsSumsSumsSumsSumsSumsSumsSums = [Int]()
    var minPathsCountsSumsSumsSumsSumsSumsSumsSumsSum = 0
    var minPathsCountsSumsSumsSumsSumsSumsSumsSumsSums = [Int]()
    var minPathsCountsSumsSumsSumsSumsSumsSumsSumsSumsSum = 0

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(minPath(grid: [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k: 3) == [1, 2, 1])
assert(minPath(grid: [[5, 9, 3], [4, 1, 6], [7, 8, 2]], k: 1) == [1])
assert(minPath(grid: [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]], k: 4) == [1, 2, 1, 2])
assert(minPath(grid: [[6, 4, 13, 10], [5, 7, 12, 1], [3, 16, 11, 15], [8, 14, 9, 2]], k: 7) == [1, 10, 1, 10, 1, 10, 1])
assert(minPath(grid: [[8, 14, 9, 2], [6, 4, 13, 15], [5, 7, 1, 12], [3, 10, 11, 16]], k: 5) == [1, 7, 1, 7, 1])
assert(minPath(grid: [[11, 8, 7, 2], [5, 16, 14, 4], [9, 3, 15, 6], [12, 13, 10, 1]], k: 9) == [1, 6, 1, 6, 1, 6, 1, 6, 1])
assert(minPath(grid: [[12, 13, 10, 1], [9, 3, 15, 6], [5, 16, 14, 4], [11, 8, 7, 2]], k: 12) == [1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6])
assert(minPath(grid: [[2, 7, 4], [3, 1, 5], [6, 8, 9]], k: 8) == [1, 3, 1, 3, 1, 3, 1, 3])
assert(minPath(grid: [[6, 1, 5], [3, 8, 9], [2, 7, 4]], k: 8) == [1, 5, 1, 5, 1, 5, 1, 5])
assert(minPath(grid: [[1, 2], [3, 4]], k: 10) == [1, 2, 1, 2, 1, 2, 1, 2, 1, 2])
assert(minPath(grid: [[1, 3], [3, 2]], k: 10) == [1, 3, 1, 3, 1, 3, 1, 3, 1, 3])



// ----------- problem HumanEval_110_exchange, completion 57 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpu8rbvte_.swift:16:9: warning: variable 'lst1' was never mutated; consider changing to 'let' constant
    var lst1 = lst1
    ~~~ ^
    let
/tmp/tmpu8rbvte_.swift:17:9: warning: variable 'lst2' was never mutated; consider changing to 'let' constant
    var lst2 = lst2
    ~~~ ^
    let
/tmp/tmpu8rbvte_.swift:18:9: warning: variable 'lst1Even' was never mutated; consider changing to 'let' constant
    var lst1Even = lst1.filter { $0 % 2 == 0 }
    ~~~ ^
    let
/tmp/tmpu8rbvte_.swift:19:9: warning: variable 'lst2Even' was never mutated; consider changing to 'let' constant
    var lst2Even = lst2.filter { $0 % 2 == 0 }
    ~~~ ^
    let
/tmp/tmpu8rbvte_.swift:20:9: warning: variable 'lst1Odd' was never mutated; consider changing to 'let' constant
    var lst1Odd = lst1.filter { $0 % 2 != 0 }
    ~~~ ^
    let
/tmp/tmpu8rbvte_.swift:21:9: warning: variable 'lst2Odd' was never mutated; consider changing to 'let' constant
    var lst2Odd = lst2.filter { $0 % 2 != 0 }
    ~~~ ^
    let
/tmp/tmpu8rbvte_.swift:22:9: warning: initialization of variable 'lst1EvenCount' was never used; consider replacing with assignment to '_' or removing it
    var lst1EvenCount = lst1Even.count
    ~~~~^~~~~~~~~~~~~
    _
/tmp/tmpu8rbvte_.swift:23:9: warning: initialization of variable 'lst2EvenCount' was never used; consider replacing with assignment to '_' or removing it
    var lst2EvenCount = lst2Even.count
    ~~~~^~~~~~~~~~~~~
    _
/tmp/tmpu8rbvte_.swift:24:9: warning: initialization of variable 'lst1OddCount' was never used; consider replacing with assignment to '_' or removing it
    var lst1OddCount = lst1Odd.count
    ~~~~^~~~~~~~~~~~
    _
/tmp/tmpu8rbvte_.swift:25:9: warning: initialization of variable 'lst2OddCount' was never used; consider replacing with assignment to '_' or removing it
    var lst2OddCount = lst2Odd.count
    ~~~~^~~~~~~~~~~~
    _
/tmp/tmpu8rbvte_.swift:26:9: warning: initialization of variable 'lst1Count' was never used; consider replacing with assignment to '_' or removing it
    var lst1Count = 
*/
/* stdout = 

*/


/// In this problem, you will implement a function that takes two arrays of numbers,
/// and determines whether it is possible to perform an exchange of elements
/// between them to make lst1 an array of only even numbers.
/// There is no limit on the number of exchanged elements between lst1 and lst2.
/// If it is possible to exchange elements between the lst1 and lst2 to make
/// all the elements of lst1 to be even, return "YES".
/// Otherwise, return "NO".
/// For example:
/// >>> exchange(lst1: [1, 2, 3, 4], lst2: [1, 2, 3, 4])
/// "YES"
/// >>> exchange(lst1: [1, 2, 3, 4], lst2: [1, 5, 3, 4])
/// "NO"
/// It is assumed that the input arrays will be non-empty.
func exchange(lst1: [Int], lst2: [Int]) -> String {
    var lst1 = lst1
    var lst2 = lst2
    var lst1Even = lst1.filter { $0 % 2 == 0 }
    var lst2Even = lst2.filter { $0 % 2 == 0 }
    var lst1Odd = lst1.filter { $0 % 2 != 0 }
    var lst2Odd = lst2.filter { $0 % 2 != 0 }
    var lst1EvenCount = lst1Even.count
    var lst2EvenCount = lst2Even.count
    var lst1OddCount = lst1Odd.count
    var lst2OddCount = lst2Odd.count
    var lst1Count = lst1.count
    var lst2Count = lst2.count
    var lst1EvenIndex = 0
    var lst2EvenIndex = 0
    var lst1OddIndex = 0
    var lst2OddIndex = 0
    var lst1Index = 0
    var lst2Index = 0
    var lst1EvenIndex2 = 0
    var lst2EvenIndex2 = 0
    var lst1OddIndex2 = 0
    var lst2OddIndex2 = 0
    var lst1Index2 = 0
    var lst2Index2 = 0
    var lst1EvenIndex3 = 0
    var lst2EvenIndex3 = 0
    var lst1OddIndex3 = 0
    var lst2OddIndex3 = 0
    var lst1Index3 = 0
    var lst2Index3 = 0
    var lst1EvenIndex4 = 0
    var lst2EvenIndex4 = 0
    var lst1OddIndex4 = 0
    var lst2OddIndex4 = 0
    var lst1Index4 = 0
    var lst2Index4 = 0
    var lst1EvenIndex5 = 0
    var lst2EvenIndex5 = 0
    var lst1OddIndex5 = 0
    var lst2OddIndex5 = 0
    var lst1Index5 = 0
   
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(exchange(lst1: [1, 2, 3, 4], lst2: [1, 2, 3, 4]) == "YES")
assert(exchange(lst1: [1, 2, 3, 4], lst2: [1, 5, 3, 4]) == "NO")
assert(exchange(lst1: [1, 2, 3, 4], lst2: [2, 1, 4, 3]) == "YES")
assert(exchange(lst1: [5, 7, 3], lst2: [2, 6, 4]) == "YES")
assert(exchange(lst1: [5, 7, 3], lst2: [2, 6, 3]) == "NO")
assert(exchange(lst1: [3, 2, 6, 1, 8, 9], lst2: [3, 5, 5, 1, 1, 1]) == "NO")
assert(exchange(lst1: [100, 200], lst2: [200, 200]) == "YES")



// ----------- problem HumanEval_10_make_palindrome, completion 120 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpxf95cwrv.swift:14:9: warning: initialization of immutable value 'string_length' was never used; consider replacing with assignment to '_' or removing it
    let string_length = string.count
    ~~~~^~~~~~~~~~~~~
    _
/tmp/tmpxf95cwrv.swift:15:9: warning: initialization of immutable value 'string_chars' was never used; consider replacing with assignment to '_' or removing it
    let string_chars = Array(string)
    ~~~~^~~~~~~~~~~~
    _
/tmp/tmpxf95cwrv.swift:16:9: warning: initialization of variable 'palindrome_suffix' was never used; consider replacing with assignment to '_' or removing it
    var palindrome_suffix = ""
    ~~~~^~~~~~~~~~~~~~~~~
    _
/tmp/tmpxf95cwrv.swift:17:9: warning: initialization of variable 'palindrome_prefix' was never used; consider replacing with assignment to '_' or removing it
    var palindrome_prefix = ""
    ~~~~^~~~~~~~~~~~~~~~~
    _
/tmp/tmpxf95cwrv.swift:18:9: warning: initialization of variable 'palindrome_suffix_length' was never used; consider replacing with assignment to '_' or removing it
    var palindrome_suffix_length = 0
    ~~~~^~~~~~~~~~~~~~~~~~~~~~~~
    _
/tmp/tmpxf95cwrv.swift:19:9: warning: initialization of variable 'palindrome_prefix_length' was never used; consider replacing with assignment to '_' or removing it
    var palindrome_prefix_length = 0
    ~~~~^~~~~~~~~~~~~~~~~~~~~~~~
    _
/tmp/tmpxf95cwrv.swift:20:9: warning: initialization of variable 'palindrome_suffix_start' was never used; consider replacing with assignment to '_' or removing it
    var palindrome_suffix_start = 0
    ~~~~^~~~~~~~~~~~~~~~~~~~~~~
    _
/tmp/tmpxf95cwrv.swift:21:9: warning: initialization of variable 'palindrome_prefix_start' was never used; consider replacing with assignment to '_' or removing it
    var palindrome_prefix_start = 0
    ~~~~^~~~~~~~~~~~~~~~~~~~~~~
    _
/tmp/tmpxf95cwrv.swift:22:9: warning: initialization of variable 'palindrome_suffix_end' was never used; consider replacing with assignment to '_' or removing it
    var palindrome_suffix_end = 0
  
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
    let string_chars = Array(string)
    var palindrome_suffix = ""
    var palindrome_prefix = ""
    var palindrome_suffix_length = 0
    var palindrome_prefix_length = 0
    var palindrome_suffix_start = 0
    var palindrome_prefix_start = 0
    var palindrome_suffix_end = 0
    var palindrome_prefix_end = 0
    var palindrome_suffix_found = false
    var palindrome_prefix_found = false
    var palindrome_suffix_index = 0
    var palindrome_prefix_index = 0
    var palindrome_suffix_char = ""
    var palindrome_prefix_char = ""
    var palindrome_suffix_char_index = 0
    var palindrome_prefix_char_index = 0
    var palindrome_suffix_char_found = false
    var palindrome_prefix_char_found = false
    var palindrome_suffix_char_start = 0
    var palindrome_prefix_char_start = 0
    var palindrome_suffix_char_end = 0
    var palindrome_prefix_char_end = 0
    var palindrome_suffix_char_length = 0
    var palindrome_prefix_char_length = 0
    var palindrome_suffix_char_count = 0
    var palindrome_prefix_char_count = 0
    var palindrome_suffix_char_index_start = 0
    var palindrome_prefix_char_index_start = 0
    var palindrome_suffix_char_index_end = 0
    var palindrome_prefix_char_index_end = 0
    var palindrome_suffix_char_index_length = 0
    var palindrome_prefix_char_index_length = 0
    var palindrome_suffix_char_index_count = 0
    var palindrome_prefix_char_index_count = 0
   
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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



// ----------- problem HumanEval_118_get_closest_vowel, completion 48 ------------
// status = SyntaxError
// exit_code = 1
/* stderr = 
/tmp/tmpnp3yzp0c.swift:17:9: warning: initialization of immutable value 'vowels' was never used; consider replacing with assignment to '_' or removing it
    let vowels = "aeiouAEIOU"
    ~~~~^~~~~~
    _
/tmp/tmpnp3yzp0c.swift:18:9: warning: initialization of immutable value 'consonants' was never used; consider replacing with assignment to '_' or removing it
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    ~~~~^~~~~~~~~~
    _
/tmp/tmpnp3yzp0c.swift:19:9: warning: initialization of variable 'result' was never used; consider replacing with assignment to '_' or removing it
    var result = ""
    ~~~~^~~~~~
    _
/tmp/tmpnp3yzp0c.swift:20:9: warning: initialization of variable 'is_consonant' was never used; consider replacing with assignment to '_' or removing it
    var is_consonant = false
    ~~~~^~~~~~~~~~~~
    _
/tmp/tmpnp3yzp0c.swift:21:9: warning: initialization of variable 'is_vowel' was never used; consider replacing with assignment to '_' or removing it
    var is_vowel = false
    ~~~~^~~~~~~~
    _
/tmp/tmpnp3yzp0c.swift:22:9: warning: initialization of variable 'is_first_vowel' was never used; consider replacing with assignment to '_' or removing it
    var is_first_vowel = false
    ~~~~^~~~~~~~~~~~~~
    _
/tmp/tmpnp3yzp0c.swift:23:9: warning: initialization of variable 'is_first_consonant' was never used; consider replacing with assignment to '_' or removing it
    var is_first_consonant = false
    ~~~~^~~~~~~~~~~~~~~~~~
    _
/tmp/tmpnp3yzp0c.swift:24:9: warning: initialization of variable 'is_second_vowel' was never used; consider replacing with assignment to '_' or removing it
    var is_second_vowel = false
    ~~~~^~~~~~~~~~~~~~~
    _
/tmp/tmpnp3yzp0c.swift:25:9: warning: initialization of variable 'is_second_consonant' was never used; consider replacing with assignment to '_' or removing it
    var is_second_consonant = false
    ~~~~^~~~~~~~~~~~~~~~~~~
    _
/tmp/tmpnp3yzp0c.swift:26:9: warning: initialization of variable 'is_third_vowel' was never used; consider rep
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
    var is_consonant = false
    var is_vowel = false
    var is_first_vowel = false
    var is_first_consonant = false
    var is_second_vowel = false
    var is_second_consonant = false
    var is_third_vowel = false
    var is_third_consonant = false
    var is_fourth_vowel = false
    var is_fourth_consonant = false
    var is_fifth_vowel = false
    var is_fifth_consonant = false
    var is_sixth_vowel = false
    var is_sixth_consonant = false
    var is_seventh_vowel = false
    var is_seventh_consonant = false
    var is_eighth_vowel = false
    var is_eighth_consonant = false
    var is_ninth_vowel = false
    var is_ninth_consonant = false
    var is_tenth_vowel = false
    var is_tenth_consonant = false
    var is_eleventh_vowel = false
    var is_eleventh_consonant = false
    var is_twelfth_vowel = false
    var is_twelfth_consonant = false
    var is_thirteenth_vowel = false
    var is_thirteenth_consonant = false
    var is_fourteenth_vowel = false
    var is_fourteenth_consonant = false
    var is_fifteenth_vowel = false
    var is_fifteenth_consonant = false
    var is_sixteenth_vowel = false
    var is_sixteenth_consonant = false
    var is_seventeenth_vowel = false
    var is_seventeenth_consonant = false

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
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




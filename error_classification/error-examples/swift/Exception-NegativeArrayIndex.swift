// ----------- problem HumanEval_10_make_palindrome, completion 193 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/Array.swift:419: Fatal error: Negative Array index is out of range
Current stack trace:
0    libswiftCore.so                    0x00002ac6a36dec80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002ac6a33d5561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002ac6a33d5286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002ac6a33d513c <unavailable> + 1433916
4    libswiftCore.so                    0x00002ac6a33d4bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002ac6a33be196 <unavailable> + 1339798
6    libswiftCore.so                    0x00002ac6a360f44e <unavailable> + 3769422
7    libswiftCore.so                    0x00002ac6a340a911 <unavailable> + 1653009
8    libswiftCore.so                    0x00002ac6a34d17c0 MutableCollection.subscript.getter + 212
9    tmpwy4zurl3                        0x00005594f5866984 <unavailable> + 10628
10   tmpwy4zurl3                        0x00005594f5865c05 <unavailable> + 7173
11   libc.so.6                          0x00002ac6a38ca460 __libc_start_main + 245
12   tmpwy4zurl3                        0x00005594f5865909 <unavailable> + 6409

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
    let length = string.count
    let string_chars = Array(string)
    var longest_palindrome_length = 0
    var longest_palindrome_end = 0
    var palindrome_lengths = [Int](repeating: 0, count: length)
    for i in 0..<length {
        let mirror = length - 1 - i
        if mirror > i {
            palindrome_lengths[mirror] = 0
        } else {
            let max_length = min(i, length - 1 - i)
            var current_length = 0
            for j in 1...max_length {
                if string_chars[i - j] == string_chars[i + j] {
                    current_length += 1
                } else {
                    break
                }
            }
            palindrome_lengths[mirror] = current_length
            if current_length > longest_palindrome_length {
                longest_palindrome_length = current_length
                longest_palindrome_end = i
            }
        }
    }
    let palindrome_end = longest_palindrome_end
    let palindrome_start = palindrome_end - longest_palindrome_length
    let prefix_start = palindrome_start - 1
    let prefix_end = palindrome_end + 1
    let prefix = String(string_chars[prefix_start...prefix_end])
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




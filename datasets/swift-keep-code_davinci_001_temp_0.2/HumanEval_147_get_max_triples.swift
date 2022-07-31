
/// You are given a positive integer n. You have to create an integer array a of length n.
/// For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
/// Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
/// and a[i] + a[j] + a[k] is a multiple of 3.
/// Example :
/// Input: n = 5
/// Output: 1
/// Explanation: 
/// a = [1, 3, 7, 13, 21]
/// The only valid triple is (1, 7, 13).
func get_max_triples(n: Int) -> Int {
    var result = 0
    var a = Array(repeating: 0, count: n)
    for i in 1...n {
        a[i-1] = i * i - i + 1
    }
    for i in 0..<n {
        for j in i+1..<n {
            for k in j+1..<n {
                if (a[i] + a[j] + a[k]) % 3 == 0 {
                    result += 1
                }
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
            
assert(get_max_triples(n: 5) == 1)
assert(get_max_triples(n: 6) == 4)
assert(get_max_triples(n: 10) == 36)
assert(get_max_triples(n: 100) == 53361)

// prime_fib returns n-th number that is a Fibonacci number and it's also prime.
// >>> prime_fib(1)
// 2
// >>> prime_fib(2)
// 3
// >>> prime_fib(3)
// 5
// >>> prime_fib(4)
// 13
// >>> prime_fib(5)
// 89
func prime_fib(n: Int) -> Int {
    var fib = [Int]()
    fib.append(1)
    fib.append(1)
    for i in 2...n {
        fib.append(fib[i-1] + fib[i-2])
    }
    var prime = [Int]()
    prime.append(2)
    for i in 3...fib[n] {
        var isPrime = true
        for j in 2..<i {
            if i % j == 0 {
                isPrime = false
                break
            }
        }
        if isPrime {
            prime.append(i)
        }
    }
    return prime[n]

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(prime_fib(n: 1) == 2)
assert(prime_fib(n: 2) == 3)
assert(prime_fib(n: 3) == 5)
assert(prime_fib(n: 4) == 13)
assert(prime_fib(n: 5) == 89)
assert(prime_fib(n: 6) == 233)
assert(prime_fib(n: 7) == 1597)
assert(prime_fib(n: 8) == 28657)
assert(prime_fib(n: 9) == 514229)
assert(prime_fib(n: 10) == 433494437)
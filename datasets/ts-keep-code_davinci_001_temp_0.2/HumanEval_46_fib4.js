//The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fib4(0) -> 0
// fib4(1) -> 0
// fib4(2) -> 2
// fib4(3) -> 0
// fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
// Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
// >>> fib4(5)
// 4
// >>> fib4(6)
// 8
// >>> fib4(7)
// 14
function fib4(n) {
    if (n < 0) {
        throw new Error('n must be a positive number');
    }
    if (n === 0) {
        return 0;
    }
    if (n === 1) {
        return 0;
    }
    if (n === 2) {
        return 2;
    }
    if (n === 3) {
        return 0;
    }
    var a = 0;
    var b = 0;
    var c = 2;
    var d = 0;
    for (var i = 4; i <= n; i++) {
        a = b;
        b = c;
        c = d;
        d = a + b + c;
    }
    return d;
}
var assert = require('node:assert');
function test() {
    var candidate = fib4;
    assert.deepEqual(candidate(5), 4);
    assert.deepEqual(candidate(8), 28);
    assert.deepEqual(candidate(10), 104);
    assert.deepEqual(candidate(12), 386);
}
test();

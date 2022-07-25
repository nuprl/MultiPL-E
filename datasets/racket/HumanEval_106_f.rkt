#lang racket
#| Implement the function f that takes n as a parameter,
 and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
 or the sum of numbers from 1 to i otherwise.
 i starts from 1.
 the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
 Example:
 f(5) == [1, 2, 6, 24, 15]|#
(define (f n)
  (define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))))
  (define (even? n)
    (= (modulo n 2) 0))
  (define (sum-to n)
    (+ n 1))
  (define (f-helper n)
    (if (even? n)
        (factorial n)
        (sum-to n)))
  (define (f-helper2 n)
    (map f-helper (list 1 (list (+ n 1)))))
  (f-helper2 n))
(f 5)

;; Unit tests below

(require rackunit)

(define (test-humaneval) (
    (check-equal? (candidate 5) '(1 2 6 24 15))
    (check-equal? (candidate 7) '(1 2 6 24 15 720 28))
    (check-equal? (candidate 1) '(1))
    (check-equal? (candidate 3) '(1 2 6))
))

(test-humaneval)
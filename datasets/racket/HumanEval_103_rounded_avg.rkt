#lang racket
#| You are given two positive integers n and m, and your task is to compute the
 average of the integers from n through m (including n and m). 
 Round the answer to the nearest integer and convert that to binary.
 If n is greater than m, return -1.
 Example:
 rounded_avg(1, 5) => "0b11"
 rounded_avg(7, 5) => -1
 rounded_avg(10, 20) => "0b1111"
 rounded_avg(20, 33) => "0b11010"|#
(define (rounded_avg n m)
  (if (> n m)
      -1
      (let* ([avg (/ (+ n m) 2)]
             [bin (integer->binary avg)]
             [len (string-length bin)])
        (if (< len (string-length (integer->binary avg)))
            (string-append (string-reverse bin) "0")
            (string-reverse bin))))))
;; Unit tests below

(require rackunit)

(define (test-humaneval) (
    (check-equal? (candidate 1 5) '0b11')
    (check-equal? (candidate 7 13) '0b1010')
    (check-equal? (candidate 964 977) '0b1111001010')
    (check-equal? (candidate 996 997) '0b1111100100')
    (check-equal? (candidate 560 851) '0b1011000010')
    (check-equal? (candidate 185 546) '0b101101110')
    (check-equal? (candidate 362 496) '0b110101101')
    (check-equal? (candidate 350 902) '0b1001110010')
    (check-equal? (candidate 197 233) '0b11010111')
    (check-equal? (candidate 7 5) -1)
    (check-equal? (candidate 5 1) -1)
    (check-equal? (candidate 5 5) '0b101')
))

(test-humaneval)
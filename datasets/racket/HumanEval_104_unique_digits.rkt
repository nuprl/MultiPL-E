#lang racket
#| Given a list of positive integers x. return a sorted list of all 
 elements that hasn't any even digit.
 Note: Returned list should be sorted in increasing order.
 For example:
 >>> unique_digits([15, 33, 1422, 1])
 [1, 15, 33]
 >>> unique_digits([152, 323, 1422, 10])
 []|#
(define (unique_digits x)
    (filter (lambda (x) (not (any-even-digits? x))) x))
;; Unit tests below

(require rackunit)

(define (test-humaneval) (
    (check-equal? (candidate '(15 33 1422 1)) '(1 15 33))
    (check-equal? (candidate '(152 323 1422 10)) '())
    (check-equal? (candidate '(12345 2033 111 151)) '(111 151))
    (check-equal? (candidate '(135 103 31)) '(31 135))
))

(test-humaneval)
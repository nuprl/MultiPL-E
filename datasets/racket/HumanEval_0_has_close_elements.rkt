#lang racket
#| Check if in given list of numbers, are any two numbers closer to each other than
 given threshold.
 >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
 False
 >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
 True|#
(define (has_close_elements numbers threshold)
  (define (close? x y) (< (abs (- x y)) threshold))
  (define (loop l)
    (cond ((null? l) #f)
          ((close? (car l) (car (cdr l))) #t)
          (else (loop (cdr l)))))
  (loop numbers))
;; Unit tests below

(require rackunit)

(define (test-humaneval) (
    (check-equal? (candidate '(1.0 2.0 3.9 4.0 5.0 2.2) 0.3) #t)
    (check-equal? (candidate '(1.0 2.0 3.9 4.0 5.0 2.2) 0.05) #f)
    (check-equal? (candidate '(1.0 2.0 5.9 4.0 5.0) 0.95) #t)
    (check-equal? (candidate '(1.0 2.0 5.9 4.0 5.0) 0.8) #f)
    (check-equal? (candidate '(1.0 2.0 3.0 4.0 5.0 2.0) 0.1) #t)
    (check-equal? (candidate '(1.1 2.2 3.1 4.1 5.1) 1.0) #t)
    (check-equal? (candidate '(1.1 2.2 3.1 4.1 5.1) 0.5) #f)
))

(test-humaneval)
#lang racket

;; The FibFib number sequence is a sequence similar to the
;; Fibbonacci sequnece that's defined as follows:
;; fibfib(0) == 0
;; fibfib(1) == 0
;; fibfib(2) == 1
;; fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
;; Please write a function to efficiently compute the n-th
;; element of the fibfib number sequence.
(define (fibfib n)
  (cond
    [(= n 0) 0]
    [(= n 1) 0]
    [(= n 2) 1]
    [else (+ (fibfib (- n 1)) (fibfib (- n 2)) (fibfib (- n 3)))]))
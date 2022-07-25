#lang racket
#| Given an array of integers, sort the integers that are between 1 and 9 inclusive,
 reverse the resulting array, and then replace each digit by its corresponding name from
 "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
 For example:
 arr = [2, 1, 1, 4, 5, 8, 2, 3]   
 -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
 -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
 return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
 If the array is empty, return an empty array:
 arr = []
 return []
 If the array has any strange number ignore it:
 arr = [1, -1 , 55] 
 -> sort arr -> [-1, 1, 55]
 -> reverse arr -> [55, 1, -1]
 return = ['One']|#
(define (by_length arr)
  (define (sort-and-reverse arr)
    (define (merge left right)
      (cond ((null? left) right)
            ((null? right) left)
            (else (if (< (car left) (car right))
                      (cons (car left) (merge (cdr left) right))
                      (cons (car right) (merge left (cdr right)))))))
    (define (merge-sort lst)
      (if (null? lst) '()
          (let ((mid (length lst)//2))
            (let ((left (merge-sort (subseq lst 0 mid)))
                  (right (merge-sort (subseq lst mid))))
              (merge left right)))))
    (merge-sort arr))
  (define (replace-by-name lst)
    (define (replace-by-name-rec lst)
      (cond ((null? lst) '())
            ((= (car lst) 1) (cons "One" (replace-by-name-rec (cdr lst))))
            ((= (car lst) 2) (cons "Two" (replace-by-name-rec (cdr lst))))
            ((= (car lst) 3) (cons "Three" (replace-by-name-rec (cdr lst))))
            ((= (car lst) 4) (cons "Four" (replace-by-name-rec (cdr lst))))
            ((= (car lst) 5) (cons "Five" (replace-by-name-rec (cdr lst))))
            ((= (car lst) 6) (cons "Six" (replace-by-name-rec (cdr lst))))
            ((= (car lst) 7) (cons "Seven" (replace-by-name-rec (cdr lst))))
            ((= (car lst) 8) (cons "Eight" (replace-by-name-rec (cdr lst))))
            ((= (car lst) 9) (cons "Nine" (replace-by-name-rec (cdr lst))))))
    (replace-
;; Unit tests below

(require rackunit)

(define (test-humaneval) (
    (check-equal? (candidate '(2 1 1 4 5 8 2 3)) '('Eight' 'Five' 'Four' 'Three' 'Two' 'Two' 'One' 'One'))
    (check-equal? (candidate '()) '())
    (check-equal? (candidate '(1 -1 55)) '('One'))
    (check-equal? (candidate '(1 -1 3 2)) '('Three' 'Two' 'One'))
    (check-equal? (candidate '(9 4 8)) '('Nine' 'Eight' 'Four'))
))

(test-humaneval)
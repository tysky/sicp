#lang racket/base

(require rackunit)

(define (sum_of_squares a b)
    (+ (* a a) 
       (* b b)))


(define (solution x1 x2 x3) 
    (cond ((and (<= x1 x2) (<= x1 x3)) (sum_of_squares x2 x3))
          ((and (<= x2 x1) (<= x2 x3)) (sum_of_squares x1 x3))
          (else (sum_of_squares x1 x2))))


(check-equal? (solution 5 10 5) 125)
(check-equal? (solution 3 2 1) 13)
(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 3 4 5) 41)
(check-equal? (solution -7 0 -4) 16)



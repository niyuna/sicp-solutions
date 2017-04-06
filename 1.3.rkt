#lang sicp
(define (<= x y) (not (> x y)))
(define (min x y z)
  (if (and (<= x y) (<= x z)) x 
  (if (and (<= y x) (<= y z)) y z))
  )
(define (square x) (* x x))
(define (square_sum x y z) (+ (square x) (square y) (square z)))
(define (foo x y z) (- (square_sum x y z) (square (min x y z))))
;(foo 1 2 3)

#lang sicp
(#%provide sum)

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))
    ))

(define (sum-iter term a next b)
  (define (sum-iter-helper summation term a next b)
    (if (> a b) summation
      (sum-iter-helper (+ summation (term a)) term (next a) next b)
    ))
  (sum-iter-helper 0 term a next b)
  )

(define (self x) x)
(define (square x) (* x x))
(define (cube x) (* x x x))
;(sum-iter (lambda (x) (* x x x)) 1 (lambda (x) (+ 1 x)) 10)

#lang sicp
(#%require "util.rkt")
(define (double x) (* 2 x))
(define (halve x) (/ x 2))
(define (fast-multi-alt x y)
  (define (foo a b c)
    (cond 
      ((= c 0) a)
      ((even? c) (foo a (double b) (halve c)))
      (else (foo (+ a b) b (- c 1))) 
    ))
 (foo 0 x y))
;(fast-multi-alt 14 15)

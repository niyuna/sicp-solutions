#lang sicp
(define (even? x) (= (remainder x 2) 0))
(define (double x) (* 2 x))
(define (halve x) (/ x 2))
(define (fast-multi x y)
  (cond 
    ((= y 0) 0)
    ((even? y) (fast-multi (double x) (halve y)))
    (else (+ x (fast-multi x (- y 1)))))
  )
;(fast-multi 14 15)

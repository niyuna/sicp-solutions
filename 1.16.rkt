#lang sicp
(define (even? x) (= 0 (remainder x 2)))
(define (fast-exp b n)
  (define (foo x y z)
    (cond 
      ((= z 0) x)
      ((even? z) (foo x (* y y) (/ z 2)))
      (else (foo (* x y) y (- z 1)))))
  (foo 1 b n))
(fast-exp 2 31)

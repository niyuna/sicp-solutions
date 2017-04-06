#lang sicp
(define (abs x) (if (< x 0) (- x) x))
(define (good x y) (< (abs (- (* x x x) y)) 0.000001))
(define (improve y x) (/ (+ (/ x (* y y)) (* 2 y)) 3))
(define (iter guess target)
  (if (good guess target) guess
    (iter (improve guess target) target)))
(define (nt-triple x) (iter 20.0 x))
(nt-triple 5)

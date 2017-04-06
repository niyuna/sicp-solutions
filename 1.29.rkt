#lang sicp
(#%require "sum.rkt")
(#%require "util.rkt")

(define (simpson-integral f a b)
  (define (helper n)
    (let
      ((interval (/ (- b a) n))
        (next (lambda (x) (+ x (* 2 (/ (- b a) n))))))
          (* (/ interval 3) 
            (+ (- (* (sum f a next b) 2) (f a) (f b)) 
              (* (sum f (+ a interval) next (- b interval)) 4)))))
    (helper 1000))
    
;(simpson-integral (lambda (x) (* x x)) 0 1.0)

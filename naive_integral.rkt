#lang sicp
(#%provide naive-integral)
(#%require "sum.rkt")

(define (naive-integral f a b)
  (define (helper f a b n)
    (define interval (/ (- b a) n)) 
    (* (sum f (+ a interval) (lambda (x) (+ x interval)) b) interval)
    )
  (helper f a b 10000)
  )

(naive-integral (lambda (x) (* x x)) 0 1.0)

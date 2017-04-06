#lang sicp

(#%provide even?)
(define (even? x) (= 0 (remainder x 2)))

(#%provide inck)
(define (inck k) (lambda (x) (x + k)))


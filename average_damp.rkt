#lang sicp

(#%provide average-damp)

(define (average-damp f)
  (lambda (x) (/ (+ x (f x)) 2))
  )

;((average-damp (lambda (x) x)) 10)

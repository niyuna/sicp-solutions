#lang sicp
(#%provide fix-point)

(define (fix-point f)
  (define (close-enough x y) (> 0.0001 (abs (- x y))))
  (define (helper x)
    (let ((guess (f x)))
      (display guess)
      (newline)
      (if (close-enough x guess)
        guess
        (helper guess)
      )))
  (helper 0.5)
  )

;(fix-point cos)

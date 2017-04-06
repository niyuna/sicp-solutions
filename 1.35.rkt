#lang sicp
(#%require "fix_point.rkt")

(fix-point (lambda (x) (+ 1 (/ 1.0 x))))

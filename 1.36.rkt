#lang sicp
(#%require "fix_point.rkt")

(fix-point (lambda (x) (/ (log 1000.0) (log x))))

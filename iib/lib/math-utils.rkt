#lang racket

(define (log10 n)
  (/ (log n) (log 10)))

(define (recip n)
  (/ 1 n))

(provide log10 recip)

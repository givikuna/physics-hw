#lang racket

(define (count-to n m)
  (for/list ([i (in-inclusive-range n m)]) i))

(provide
  count-to)

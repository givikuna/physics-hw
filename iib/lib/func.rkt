#lang racket

(require racket/function)

(define (id i)
  (identity i))

(provide
  id)

#lang racket

(define (log10 n)
  (/ (log n) (log 10)))

(define (recip n)
  (/ 1 n))

(define (neg n)
  (* -1 n))

(define (inc n)
  (+ 1 n))

(define (dec n)
  (- n 1))

(define (roughly-point-five? n)
  (let ([abs-n (abs n)]
        [epsilon 0.01])
    (< (abs (- abs-n 0.5)) epsilon)))

(provide
  log10
  recip
  neg
  inc
  dec
  roughly-point-five?)

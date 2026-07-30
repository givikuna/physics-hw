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

(provide
  log10
  recip
  neg
  inc
  dec)

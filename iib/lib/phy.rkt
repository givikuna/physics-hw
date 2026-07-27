#lang racket

(require "./math-utils.rkt")
(require "./constants.rkt")

(define (gamma v)
  (recip (sqrt (- 1 (sqr (/ v lightspeed))))))

(define (K-nonrel v m)
  (* (* 0.5 m) (sqr v)))

(define (K-rel v m)
  (abs (let* ([c lightspeed]
              [γ (gamma v)])
         (* (- 1 γ) (* m (sqr c))))))

(define (wien-lambda T)
  (/ wien-displacement T))

(provide
  gamma
  K-nonrel
  K-rel
  wien-lambda)

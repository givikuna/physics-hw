#lang racket

(require "../lib/formatting.rkt")
(require "../lib/phy.rkt")
(require "../lib/constants.rkt")

; Part A
; Compute the kinetic energy of a proton (mass 1.67e-27kg) using both the non-relativistic and relativistic expressions for speed of 9e7m/s

(define (nonrel v)
  (let* ([m M-proton])
    (* (* 0.5 m) (sqr v))))

(define (rel v)
  (abs (let* ([m M-proton]
              [c lightspeed]
              [γ (gamma v)])
         (* (- 1 γ) (* m (sqr c))))))

(define K-nonrel1 (nonrel 9e7))

(define K-rel1 (rel 9e7))

(displayln
  (qstr #\A (string-append
              (string-append (number->string K-nonrel1) ", ")
              (string-append (number->string K-rel1) " J"))))

; Part B
; Compute the ratio of the two results (relativistic divided by non-relativistic)

(displayln (qn #\B (/ K-rel1 K-nonrel1)))

; Part C
; Compute the kinetic energy of proton using both the non-relativistic and relativistic expression for speed of 2.75e8

(define K-nonrel2 (nonrel 2.75e8))

(define K-rel2 (rel 2.75e8))

(displayln
  (qstr #\C (string-append (qcomma K-nonrel2 K-rel2) " J")))

; Part D
; Compute the ratio of the two results (relativistic divided by non-relativistic)

(displayln (qn #\D (/ K-rel2 K-nonrel2)))

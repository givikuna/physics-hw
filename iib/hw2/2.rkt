#lang racket

(require "../lib/formatting.rkt")
(require "../lib/math-utils.rkt")

; You wish to crate an image that is 10 meters from an object.
; This image is to be inverted and half the height of the object.
; You wish to accomplish this using one spherical mirror.

; Part A
; What is the focal length f of the mirror that would accomplish this?
; Express your answer in meters

; m = -0.5, m = -di / do, so di = 0.5do
; do - di = 10 => do - 0.5do = 10 => do = 20, di = 10
; 1/f = 1/do + 1/di
; f = 1/(1/do + 1/di)

(define f
  (let ([di 10.0] [do 20.0])
    (recip (+ (recip di) (recip do)))))

(displayln (qnn #\A f #\m))

; Part B
; is the mirror concave or convex
; the mirror is concave, because:
;   Remember that concave mirrors have positive focal lengths
;   And convex mirrors have negative focal lengths
;   And f is positive

(displayln (qstr #\B "concave"))

; Part C
; What is the magnitude r of this radius of curvature of this mirror
; Express your answer in meters

; f = r/2 => r = 2f

(define r (((curry *) 2) f))

(displayln (qnn #\C r #\m))

; Part D
; What type of image is created, real or virtual
; Distance is positive, thus, real

(displayln (qstr #\D "real"))

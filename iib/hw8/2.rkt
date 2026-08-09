#lang racket

(require "../lib/formatting.rkt")
(require "../lib/constants.rkt")

; Part A

; If you treat an electron as a classical rigid sphere with radius 1.3e-17m and uniform density, what angular speed \omega is necessary to produce a spin angular momentum of magnitude \sqrt34 \hbar?
; Use h=6.63e-34 J*s
; Recall \hbar = h/2pi and 9.11e-31kg is the mass of an electron

; Recall that for a rigid solid sphere with uniform density, the moment of inertia is given by:
; I=\frac25mr^2
; We have both r & m
; Recall L=I\omega

; So \omega = L/I

(define om (let ([L (* (sqrt (/ 3.0 4)) hbar)]
                 [I (let ([m M-electron]
                          [r 1.3e-17])
                      (* (/ 2.0 5) m (sqr r)))])
             (/ L I)))

(displayln (qnn #\A om " rad/s"))

; Part B

; Use the equation v=r\omega relating velocity to radius and angular velocity together with the result of part A to calculate the sped v of a point at the electron's equator.
; Express your answer in meters per second to three significant figures.

(displayln (qnn #\B (let ([r 1.3e-17]) (* r om)) "m/s"))

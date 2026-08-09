#lang racket

(require "../lib/formatting.rkt")
(require "../lib/constants.rkt")

(displayln (qnn #\A 3 " protons"))

(displayln (qnn #\B 14 " nucleons"))

(displayln (qnn #\C 30 " neutrons"))

(displayln (qstr #\D "deuterium and tritium"))

(displayln (qnn #\E (let* ([R_0 empirical-nuclear-constant]
                           [A 208.0])
                      (* R_0 (expt A 1/3)))
                "m"))

; Part F

; Assuming that each nucleus is roughly spherical and that its mass is roughly equal to A (in atomic mass units u), what is the density \rho of nucleon number A?

; Volume of Nucleus (V):
; Assuming a spherical nucleus with radius R=R_0A^{1/3}
; V = 4/3 pi R^3 = 4/3 pi R_0^3 A
; m = A * u (u is the mass of a proton)
; density \rho = m/V = A*u/V = 3u/(4piR_0^3)
; In terms of u then: 3/(4piR_0^3)

(displayln (qnn #\F (/ (* 3 M-proton) (* 4 pi (expt empirical-nuclear-constant 3))) "u/m^3"))

#lang racket

(require "../lib/formatting.rkt")
(require "../lib/phy.rkt")
(require "../lib/dimensional.rkt")

; Rutherford's scattering experiments gave the first indications that an atom consists of a small, dense, positively charged nucleus surrounded by negatively charged electrons.
; His experiments also allowed for a rough determination of the size of the nucleus.
; In this problem, you will use the uncertainty principle to get a rough idea of the kinetic energy of a particle inside the nucleus.

; Consider a nucleus with a diameter of roughly 5.0e-15m

; Part A
; Consider a particle inside a nucleus.
; The uncertainty delta-x in its position is equal to the diameter of the nucleus.
; What is the uncertainty delta-p of its momentum?
; To find this, use delta-x delta-p \geq hbar/2
; where hbar = h/2pi
; Express your answer in kg*m/s

(displayln (qnn #\A
                (let ([delta-x 5e-15])
                  (momentum-uncertainty-x delta-x))
                "kg*m/s"))

; Part B
; The uncertainty delta-p sets a lower bound on the average momentum of a particle in the nucleus.
; If the particle's average momentum were to fall below that point, then the uncertainty principle would be violated.
; Since the uncertainty principle is a fundamental law of physics, this cannot happen.
; Using delta-p = 2.1e-20kgm/s as the minimum momentum of a particle in the nucleus, find the minimum kinetic energy K-min of the particle. Use m=1.7e-27kg as the mass of the particle.
; Note that since our calculations are so rough, this serves as the mass of a neutron or a proton.

(displayln (qnn #\B
                (J->MeV (let ([delta-p 2.1e-20] [m 1.7e-27])
                          (K-nonrel-from-momentum delta-p m)))
                "MeV"))

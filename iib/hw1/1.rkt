#lang racket

; (require racket/format)

(require "../lib/constants.rkt")

#|

A solar sail allows a spacecraft to use radiation pressure for propulsion, similar to the way wind propels a sailboat. The sails of such spacecraft are made out of enormous reflecting panels. The area of the panels is maximized to catch the largest number of incident photons, thus maximizing the momentum transfer from the incident radiation.
If such a spacecraft were to be simply pushed away from a star by the incident photons, the force of the radiation pressure would have to be be greater than the gravitational attraction from the star emitting the photons. The critical parameter is the area density (mass per unit area) of the sail.

|#

; Part A:

; Consider a perfectly reflecting mirror
;   oriented so that solar radiation of intensity I is incident upon
;   and perpendicular to, the reflective surface of the mirror.
; If the mirror has surface area A what is F_rad, the magnitude of the average force due to the radiation pressure of the sunlight on the mirror?
; Express your answer in terms of intensity I, the mirror's surface area A, and the speed of light c.

; to do this:
; consider the formula: P_EM = 2 * I / c
; and that F = pA
; thus, F = 2IA/c

(displayln "a) 2IA/c")

; Part B:

; Suppose that the mirror described in Part A is initially at rest a distance R away from the sun.
; What is the critical value of area density for the mirror at which the radiation pressure exactly cancels out the gravitational attraction

; To do this we need to know the following things:
; The intensity of sunlight as a function of the distance R from the sun:
; I_sun(R) = 3.2e25 / R^2
; and
; the gravitational constant G = 6.67e-11

; area density works like this: m=σA
; so to find critical area density we do the following steps:
; Firstly, take the force F_rad = pA = 2IA/c = 2(3.2e25)A/(cR^2)
; And for gravity: F_g = GMm/R^2 = GMσA/R^2
; So at: F_g = F_rad we get GMσ = 2(3.2e25)/c
; Or in another way: σ = 2(3.2e25)/(cGM)

(define σ (/ (* 2.0 3.2e25) (* lightspeed G M-sun)))

(displayln (string-append "b) " (number->string σ)))

#lang racket

(require "../lib/constants.rkt")
(require "../lib/dimensional.rkt")

;A satellite in geostationary orbit is used to transmit data via electromagnetic radiation. The satellite is at a height of 35,000 km
; above the surface of the earth, and we assume it has an isotropic power output of 1.0 kW (1000W)
; (although, in practice, satellite antennas transmit signals that are less powerful but more directional).
;
; Part A

; Reception devices pick up the variation in the electric field vector of the electromagnetic wave sent out by the satellite.
; Given the satellite specifications listed in the problem introduction, what is the amplitude E_0 of the electric field vector of the satellite broadcast as measured at the surface of the Earth?
; Use ε_0=8.85e-12 C/(V*m) for the permittivity of space and c=3.00e8 for the speed of light

; Recall that intensity as a function of distance is:
; I = P/(4pi * r^2)
; Recall the relation between I & E
; I = 0.5 ε_0 c E^2
; Thus: E = sqrt (I / (0.5 epsilon_0 c))

(define I
  (let* ([P (kW->W 1000)]
         [r (km->m 35000)])
    (/ P (* 4 pi (expt r 2)))))

(define E (sqrt (/ I (* 0.5 ε_0 c-less-precise))))

(displayln (number->string E))

; fuck this why micrometers dude

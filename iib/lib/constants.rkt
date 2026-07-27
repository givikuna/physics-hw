#lang racket

(require "dimensional.rkt")

(define lightspeed 2.998e8) ; m/s
(define lightyear (* lightspeed (years->seconds 365))) ; m
(define c-less-precise 3.00e8) ; m/s
(define M-sun 1.9891e30) ; kg
(define M-sun-less-precise 2.0e30) ; kg
(define M-proton 1.67e-27) ; kg
(define M-neutron 9.75e-28) ; kg
(define G 6.67e-11) ; m^3/(kg*s)
(define ε_0 8.85e-12) ; C/(V*m)
(define elem-charge 1.60217663e-19) ; C
(define stefan-boltzmann 5.67e-8) ; W / (m^2 * K^4)
(define wien-displacement 2.89777e-3) ; m * K

(provide
  lightspeed
  wien-displacement
  stefan-boltzmann
  lightyear
  M-sun
  M-sun-less-precise
  G
  c-less-precise
  ε_0
  M-proton
  elem-charge
  M-neutron)

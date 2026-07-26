#lang racket

(require "dimensional.rkt")

(define lightspeed 2.998e8) ; m/s
(define lightyear (* lightspeed (years->seconds 365))) ; m
(define c-less-precise 3.00e8) ; m/s
(define M-sun 2.0e30) ; kg
(define G 6.67e-11) ; m^3/(kg*s)
(define ε_0 8.85e-12) ; C/(V*m)

(provide lightspeed lightyear M-sun G c-less-precise ε_0)

#lang racket

(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")
(require "../lib/func.rkt")
(require "../lib/constants.rkt")

; The sun produces energy by nuclear fusion reactions,
; in which matter is converted into energy.
; By measuring the amount of energy we receive from the sun, we know that it is producing energy at a rate of 3.8e26W

; Part A
; How many kilograms of matter does the sun lose each second?
; Express your answer in Kilograms

; p = E / t
; p * t = E
; pt = mc^2
; m = pt / c^2

(define m-kg
  (let*
    ([p 3.8e26]
     [c lightspeed]
     [t 1]
     [m (/ (* p t) (sqr c))])
    (id m)))

(displayln (qnn #\A m-kg "kg"))

; Part B
; Approximately how many tons of matter is this? (1 ton = 2000 lb)
; express your answer in tons

(displayln (qnn #\B (kg->ton m-kg) " tons"))

; Part C
; At this rate, how long would it take the sun to use up all of its mass?
; Express your answer in years

; To do this we can consider:
; t = mass / mass per second
; so we need the sun's mass
; its in the constants library

(displayln (qnn
             #\C
             (seconds->years (/ M-sun m-kg))
             " years"))

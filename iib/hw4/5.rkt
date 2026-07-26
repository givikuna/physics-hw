#lang racket

(require threading)

(require "../lib/math-utils.rkt")
(require "../lib/constants.rkt")
(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")

; A spaceship flies past Mars with a speed of 0.985c relative to the surface of the planet.
; When the spaceship is directly overhead, a signal light on the Martian surface blinks on and then off.
; An observer on Mars measures that the signal light was on for 90 microseconds.

; Part A
; Does the observer on Mars or hte pilot on the spaceship measure the proper time?

; Proper time refers to the amount of time that actually passed for the event from its reference frame.
; From the spaceship moving so fast, that time'll be measured as being longer (dilated).
; Time dilation disallows for measuring proper time.
; Thus, the proper time measurement'll of the light signal be observed by the observer on Mars.

(displayln (qstr #\A "Observer on Mars"))

; Part B
; What is the duration of the light pulse measured by the pilot of the spaceship?
; express your answer in microseconds

; To do this, recall the formula for time dilation:
; Time-dilation Equation:
; dt = dt0 / sqrt(1 - (v / c)^2)
; dt - the time interval measured by an observer moving relative to the event
; dt0 - the proper time interval measured by an observer at rest relative to the event
; v - the relative speed of the moving object or frame
; c - the speed of light

; you can rewrite as:
; dt = \gamma dt0
; where gamma is the lorentz factor: 1/sqrt(1 - (v/c)^2)

; So for this question we know:
; v = 0.985c
; c = lightspeed
; dt0 = 90 microseconds
; so we can calculate the

(displayln
  (qnn #\B
       (let* ([c lightspeed]
              [v (* 0.985 c)]
              [dt0 (μs->s 90)]
              [γ (~> c
                     ((lambda (x) (/ v x)))
                     sqr
                     ((lambda (x) (- 1 x)))
                     sqrt
                     recip)])
         (~> dt0
             s->μs
             ((lambda (x) (* x γ)))))
       "µs"))

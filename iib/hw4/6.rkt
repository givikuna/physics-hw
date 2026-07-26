#lang racket

(require threading)

(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")
(require "../lib/math-utils.rkt")
(require "../lib/constants.rkt")

; A space probe is sent to the vicinity of the star Capella,
; which is 42.2 light-years from earth.
; (a light year is a distance that light travels in a year.)
; The probe travels with a speed of 0.9930c.
; An astronaut recruit on board is 19 years old when the probe leaves the Earth.

; What is her biological age when the probe reaches Capella:

; She starts at 19 years
; Lets define a year as 365 days
; A day as 24 hours
; An hour as 60 minutes
; And a minute as 60 seconds

; also recall the formula for proper time:
; dt = dt0 / gamma
; where gamma = 1 / sqrt(1 - (v/c)^2)
; we know v, c, and can calculate dt0
; we can do that with: v = d / t => dt0 = d / v
; so we find dt

(displayln
  (qnn #\A
       (let* ([c lightspeed]
              [v (* 0.9930 c)]
              [γ (~> v
                     ((lambda (x) (/ x c)))
                     sqr
                     ((lambda (x) (- 1 x)))
                     sqrt
                     recip)]
              [d (* c (years->seconds 42.2))]
              [d-t-earth (/ d v)]
              [d-t-0 (/ d-t-earth γ)]
              [final-age (+ 19 (seconds->years d-t-0))])
         (exact-round final-age))
       " years"))

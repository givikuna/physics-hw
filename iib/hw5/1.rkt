#lang racket

(require "../lib/func.rkt")
(require "../lib/dimensional.rkt")
(require "../lib/constants.rkt")
(require "../lib/formatting.rkt")

; An enemy spaceship is moving toward your starfighter with a speed, as measured in your frame, of 0.4c/
; The enemy ship fires a missile toward you at a speed of 0.7c
; relative to the enemy ship.
; see fig 1

; Part A
; What is the speed of the missile relative to you
; Express your answer in terms of speed of light

; recall the formula:
; v21 = (v2e + ve1) / (1 + ((v2e * ve1)/c^2))

(define v21 (let* ([c lightspeed]
                   [ve1 (* 0.4 c)]
                   [v2e (* 0.7 c)])
              (/ (+ v2e ve1) (+ 1 (/ (* v2e ve1) (sqr c))))))

(displayln (qnn #\A (/ v21 lightspeed) "c"))

; Part B

; If you measure that the enemy ship is 8e6km away from you when the missile is fired,
; how much time, measured in your frame, will it take the missile to reach you?
; express your answer in seconds

; time is distance over speed

(displayln
  (qnn #\B
       (let*
         ([v v21]
          [d (km->m 8e6)]
          [t (/ d v)])
         (id t))
       "s"))

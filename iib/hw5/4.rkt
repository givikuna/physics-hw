#lang racket

(require "../lib/formatting.rkt")
(require "../lib/constants.rkt")
(require "../lib/phy.rkt")

(define (f v__i v__f)
  (let* ([c lightspeed]
         [v_i (* v__i c)]
         [v_f (* v__f c)]
         [gamma_i (gamma v_i)]
         [gamma_f (gamma v_f)])
    (- gamma_f gamma_i)))

; Part A
; How much work W must be done on a particle with a mass of m to accelerate it from rest to a speed of 0.902c?
; Express your answer as a multiple of mc^2

; Sol'n:
; W = delta E = (gamma_f - gamma_i) m c^2

(displayln (qnn #\A
                (f 0 0.902)
                "mc^2"))

; Part B
; How much work W must be done on a particle with a mass of m to accelerate it from a speed 0.902c to a speed of 0.989

(displayln (qnn #\B
                (f 0.902 0.989)
                "mc^2"))

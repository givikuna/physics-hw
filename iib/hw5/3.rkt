#lang racket

(require "../lib/math-utils.rkt")
(require "../lib/phy.rkt")
(require "../lib/formatting.rkt")
(require "../lib/constants.rkt")
(require "../lib/dimensional.rkt")

; A proton (with a rest mass m = 1.67e-27kg) has a total energy that is 4 times its rest energy.

; Part A
; What is the kinetic energy E_k of the Proton?
; Express your answer in billions of electron volts to three significant figures.

; recall:
; E = Ek + E0 (rest and kinetic energy summed)
; So 4E0 = Ek + E0
; so Ek = 3E0

(define E-k (* 3 (kg->eV M-proton)))

(displayln
  (qnn #\A
       (eV->GeV E-k)
       "GeV"))

; Part B

; What is the magnitude of the momentum p of the proton?
; Express your answer in kg-meters per second

; recall:
; p = gamma m v
; gamma = 1 / (1 - (v/c)^2)
; also relativistic kinetic energy is:
; mc^2 (gamma - 1)

; we also don't know the speed of the proton
; to find the speed we need to use that we know the kinetic energy
; then we can do:
; v = sqrt (c * (1 - (1 / (kE / mc^2   + 1))^2))

(define v (let* ([E (eV->J E-k)]
                 [c lightspeed]
                 [m M-proton])
            (* c (sqrt (- 1 (sqr (recip (+ 1 (/ E (* m (sqr c)))))))))))

(define p (let* ([m M-proton])
            (* m (* v (gamma v)))))

(displayln (qnn #\B
                p
                "kg*m/s"))

; Part C
; What is the speed u of the proton?
; Express your answer as a fraction of the speed of light to four sig figures

(displayln (qnn #\C
                (/ v lightspeed)
                "c"))

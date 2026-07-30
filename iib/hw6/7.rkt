#lang racket

(require "../lib/math-utils.rkt")
(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")
(require "../lib/phy.rkt")

; A monochromatic laser is exciting the hydrogen atoms from the n=2 state to the n=5 state.

; Part A
; What is the wavelength of the laser?
; Express your answer to three sig digits in nm

; recall the rydberg formula: 1/lambda=R(1/m^2 - 1/n^2)
; So:
; m = 2, n = 5

(displayln (qnn #\A
                (m->nm (recip (rydberg-formula 2 5)))
                "nm"))

; Part B
; Eventually, all of the excited hydrogen atoms will emit photons until they fall back to the ground state.
; How many different wavelengths can be observed in this process?

; They undergo n = 5 -> 1, n=4->1, n=3->1, n=2->1, so total 4+3+2+1=10

; TBA

; Part C
; What is the longest wavelength observed

; longest -> smallest energy transition (n1 = 4, n2 = 5)

; Part D
; What is the shortest wavelength observed.

; shortest -> largest energy transition (n1 = 1, n2 = 5)

#lang racket

(require "../lib/constants.rkt")
(require "../lib/formatting.rkt")
(require "../lib/phy.rkt")

; Consider an electron in the state n=4, l=3, m=2, s=1/2

; Part A
; In what shell is this electron located

(displayln (qstr #\A (electron-shell-n 4)))

; Part B

; In what subshell is this electron located?

(displayln (qstr #\B (electron-subshell-l 3)))

; Part C

; How many other electrons could occupy the same subshell as this electron?

(displayln (qstr #\C (sub1
                       (electron-subshell-orientations-count-l 3))))

; Part D

; What is the orbital angular momentum L of this electron?
; Express your answer in units of \hbar

(define L (quantum-L-max-l 3))

(displayln (qnn #\D (/ L hbar) #\ℏ))

; Part E

; What is the z component of the orbital angular momentum of this electron, L-z?
; Express your answer in terms of \hbar

(define L-z (z-orbital-L-ml 2))

(displayln (qnn #\E (/ L-z hbar) #\ℏ))

; Part F

; What is the z component of the spin angular momentum of this electron, S-z

(define S-z (z-spin-L-ms 1/2))

(displayln (qnn #\F (/ S-z hbar) #\ℏ))

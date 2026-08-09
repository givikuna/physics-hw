#lang racket

; (require "../lib/list.rkt")
(require "../lib/constants.rkt")
(require "../lib/formatting.rkt")
(require "../lib/phy.rkt")

; Learning Goal
; To understand and be able to use the rules for determining allowable orbital angular momentum states.

; Several numbers are necessary to describe the states available to an electron in the hydrogen atom.
; The principal quantum number (n) determines the energy of the electron.
; The orbital quantum number (l) determines the total angular momentum of the electron.
; The magnetic quantum number (m-l) determines the component of the angular momentum parallel to a specific axis, usually the z-axis.

; For a given principal quantum number n, the orbital quantum number can take integer values ranging from zero to n-1.
; For a given orbital quantum number l, the magnetic quantum number can take integer values from -l to l.
; A fourth quantum number, the spin (m-s) is important for interactions with magnetic fields and counting states.
; The spin can be either +1/2 or -1/2, independent of the values of other quantum numbers.

; The energy of an electron in hydrogen is related to the principal quantum number by:
; E-n = (-13.60eV)/n^2

; The orbital angular momentum is related to the orbital quantum number by
; L=\hbar \sqrt ( l(l+1) )
; and the orbital angular momentum in the z direction is related to the magnetic quantum number by:
; L-z = m-l\hbar

;

; Part A

; How many different values of l are possible for an electron with a principal quantum number n=5

(displayln (qstr #\A (number->string (length (orbital-quantum-numbers 5)))))

; Part B

; How many values of m-l are possible for an electron with orbital quantum number l=4

(displayln (qstr #\B (number->string (length (magnetic-quantum-numbers 4)))))

; Part C

; The quantum state of a particle can be specified by giving a complete set of quantum numbers (n, l, m-l, m-s).
; How many different quantum states are possible if the principal quantum number is n=5

; To find the total number of allowed states, first write down the number of allowed orbital quantum numbers l, and then write down the number of allowed values of m-l for each orbital quantum number
; Sum these quantities, and then multiply by 2 to account for the two possible orientations of spin

(displayln (qstr #\C (number->string
                       (* 2 (for/sum ([l (orbital-quantum-numbers 5)])
                              (for/sum ([_m-l (magnetic-quantum-numbers l)])
                                1))))))

; Part D

; Is the state n=3 l=3 m-l=-2 m-s=1/2 an allowable state?
; If not why not

(displayln (qstr #\D "No: The orbital quantum number cannot equal the principal quantum number"))

; Part E

; What is the maximum angular momentum L-max that en electron with the principal quantum number n=4 can have?

(displayln (qnn #\E
                (/ (quantum-L-max-n 4) hbar)
                #\ℏ))

#lang racket

(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")
(require "../lib/constants.rkt")

; When ultraviolet light with a wavelength of 400nm falls on a certain surface, the maximum kinetic energy of the emitted photoelectrons is 1.10eV

; Part A

; What is the maximum kinetic energy K0 of the photoelectrons when light of wavelength 260nm falls on the same surface?
; use h = 6.63e-34Js for planck's constant and c=3e8 for light
; express your answer in electron volts

; Same surface
; So we need to find the work function phi
; phi = E-old - K-max-old
; Then we can do:
; K-max-new = E-new - phi

(displayln (qnn #\A
                (J->eV
                  (let ([c c-less-precise]
                        [h plancks-constant])
                    (let ([phi
                           (let* ([wavelength (nm->m 400)]
                                  [E-old (/ (* h c) wavelength)]
                                  [K-max-old (eV->J 1.10)])
                             (- E-old K-max-old))])
                      (let* ([wavelength (nm->m 260)]
                             [E-new (/ (* h c) wavelength)])
                        (- E-new phi)))))
                "eV"))

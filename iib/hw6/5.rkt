#lang racket

(require "../lib/formatting.rkt")
(require "../lib/constants.rkt")
(require "../lib/phy.rkt")

; The de Broglie relation is valid for particles moving with relativistic speed, as long as the relativistic momentum is used in the de Broglie formula

; Part A
; Suppose that, for a high-energy experiment, to probe the structure of protons, you need electrons with de Broglie wavelength of 1.00e-16m.
; What total energy E (including rest energy) would these electrons have?
; Express your answer in Joules to three sig figs

; lambda = h / p
; lambda = h / gamma mv
;
; K = (gamma - 1) m c^2
; E-tot = E-rest + E-kin

(displayln (qnn #\A
                (+ (* (- (gamma (/ plancks-constant (* M-electron 1.0e-16))) 1)
                      (rest-energy M-electron))
                   (rest-energy M-electron))
                "J"))

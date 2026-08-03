#lang racket

(require "../lib/phy.rkt")
(require "../lib/formatting.rkt")

; Suppose that the uncertainty of position of an electron is equal to the radius of the n=1 Bohr orbit for hydrogen.

; Part A
; Calculate teh simultaneous minimum uncertainty of the corresponding momentum component.
; Express your answer in kg*m/s to three sig figs

(displayln (qnn #\A (let* ([n 1] [r (hydrogen-radius-n n)]
                           [delta-x r])
                      (momentum-uncertainty-x delta-x)) "kg*m/s"))

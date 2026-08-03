#lang racket

(require "../lib/constants.rkt")
(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")
(require "../lib/phy.rkt")

; The radii of atomic nuclei are of the order of 5.0e-15m

; Part A
; Estimate the minimum uncertainty in the momentum of an electron if it is confined within a nucleus.

(displayln (qnn #\A
                (let ([delta-x 5.0e-15]) (momentum-uncertainty-x delta-x))
                "kg*m/s"))

; Part B
; Take this uncertainty in momentum to be an estimate of the magnitude of the momentum.
; Use the relativistic relationship between energy and momentum, equation E^2 = (mc^2)^2 + (pc^2), to obtain an estimate of the kinetic energy of an electron confined within a nucleus.
; Express your answer in MeV

; Recall that p = (hbar/2)/x
; Also recall that K = E - mc^2

(define K (let* ([m M-electron]
                 [c lightspeed]
                 [delta-x 5.0e-15]
                 [delta-p (momentum-uncertainty-x delta-x)]
                 [RE (rest-energy m)])
            (let ([E (sqrt (+ (sqr RE) (sqr (* delta-p c))))])
              (- E RE))))

(displayln (qnn #\B (J->MeV K) "MeV"))

; Part C
; Calculate the magnitude of the Coulomb potential energy of a proton and en electron separated by r.
; Express your answer in MeV

; Recall that the coulomb potential energy is measured by k(q_1q_2/r) where k is the coulomb constant.
; k = 1/4pi(ε0)

(define U (abs (let ([q_1 elem-charge]
                     [q_2 (* -1 elem-charge)]
                     [r 5.0e-15]
                     [k coulomb-const])
                 (* k (/ (* q_1 q_2) r)))))

(displayln (qnn #\C (J->MeV U) "MeV"))

; Part D
; Compare the energies calculated in parts B and C
; K / |U|

(displayln (qn #\D (/ K U)))

; Part E
; On the basis of the result on Part D, could there be electrons within the nucleus?

; The kinetic energy required to keep the electron in the nucleus is far higher than the coulomb energy that is there containing it.
; Therefore, no, its not going to be in the nucleus.

(displayln (qstr #\E "no"))

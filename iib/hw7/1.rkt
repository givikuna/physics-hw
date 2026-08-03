#lang racket

(require "../lib/phy.rkt")
(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")
(require "../lib/constants.rkt")

; Learning Goal:
; To understand, qualitatively and quantitatively, the uncertainty principle.

; Understanding Heisenberg's uncertainty principle is one of the keys to understanding quantum mechanics.
; The principle states that you can never simultaneously know the exact location and momentum of a particle.
; Further it states that the more you know about the position of the particle, the less you know about its momentum, and vice versa.
; The uncertainty principle is more than just a statement about the difficulty of measuring such things experimentally.
; Rather, it states that momentum and position are not simultaneously well defined for quantum particles.
; In fact, Heisenberg did not call his idea the uncertainty principle; he called it the indeterminacy principle, because position and momentum and fundamentally indeterminate, not just unknown, for the waves described by quantum mechanics.

; This idea is difficult to reconcile with common experience.
; To understand it better, you must consider the properties of a wave. (Fig 1)
; According to the de-broglie equation, the momentum of a wave is directly related to its wavelength.
; For the wave in the first figure, the wavelength is clearly well defined.
; However, the position is not well defined at all.
; The question, "where is the wave?" does not have a well-defined answer,
; as we expect for a particle.
; This is the essence of the indeterminacy principle.
; We could just as easily draw a single sharp point at some particular x coordinate (Fig 2)
; In this problem, you will consider such a wave packet as simply being one beat cycle of this wave.
; While not exactly correct, this will give a useful approximation.

; Let the distance between the two nodes of hte wave be the uncertainty in position delta x.
; Since the beat frequency is given by f_1-f_2, and the wave travels at speed v, the uncertainty in position is given by:
; delta x = v / (f_1 - f_2)

; Part A:
; The de broglie relation lambda = h/p can be re-written in terms of the wave number k as p=k(reduced planck constant).
; Recall that wave number is defined by k=2pi/lambda.
; Using the fact that lambda=v/f, find the wave numbers k_1 and k_2 corresponding to frequencies f_1 and f_2.
; Express your answer as two expressions separated by a comma. Use f_1, f_2, v, and pi.

; k = 2pi/lambda
; lambda = v / f
; k = 2pi/(v/f)
; k = 2pif/v
; k_n = (2pif_1/v)

(define (wave-number-formula n)
  (string-append
    "(2 π f_"
    (string-append
      (number->string (exact-round n))
      ") / v")))

(displayln (qstr #\A
                 (string-append
                   (wave-number-formula 1)
                   (string-append
                     ", "
                     (wave-number-formula 2)))))

; Part B

; Find an expression for the uncertainty delta k = k_1-k_2 in the wave number.
; Use your results from part A

(displayln (qstr #\B
                 (let ([l (map
                            (lambda (x) (format "(~a)" x))
                            (map wave-number-formula (list 1 2)))])
                   (let ([k1 (first l)]
                         [k2 (second l)])
                     (format "~a - ~a" k1 k2)))))

; Part C
; What is the value of the product delta x delta y?
; Use p=hbar k to find the uncertainty in the momentum of the particle.
; Express your answer in terms of quantities given in Part A and fundamental constants.

; p = hbar k
; So: delta p = hbar (k_1 - k_2)

(displayln (qstr #\C "2πℏ"))

; Part D
; In an atom, an electron is confined to a space of roughly 10^-10 meters.
; If we take this to be the uncertainty in the electron's position, what is the minimum uncertainty delta_p in its momentum
; Express your answer in kgm/s

; Recall delta x delta p \geq hbar / 2

(displayln (qnn #\D
                (let ([delta-x 1e-10])
                  (momentum-uncertainty-x delta-x))
                "kg*m/s"))

; Part E
; What is the kinetic energy K of an electron with momentum 1.05e-24kgm*s?
; Answer in eVs

; Recall KE=p^2/2m

(displayln (qnn #\E
                (let ([p 1.05e-24])
                  (J->eV (K-nonrel-from-momentum p M-electron)))
                "eV"))

; Part F
; Suppose that you know the position of a 100-gram pebble to within the width of an atomic nucleus (delta x = 10^-15 meters).
; What is the minimum uncertainty in the momentum of the pebble?

; Express your answer in kg*m/s

(displayln (qnn #\F
                (let ([delta-x 1e-15])
                  (momentum-uncertainty-x delta-x))
                "kg*m/s"))

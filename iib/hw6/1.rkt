#lang racket

(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")
(require "../lib/constants.rkt")

; The human eyes is most sensitive to green light of wavelength 505nm.
; Experiments have found that when people are kept in a dark room until their eyes adapt to the darkness, a single photon of green light will trigger receptor cells in the rods of the retina.

; Part A
; What is the frequency of this photon?
; Express your answer in hertz

; Recall: v = lambda * f

(define f (let ([c lightspeed]
                [wavelength (nm->m 505)])
            (/ c wavelength)))

(displayln (qnn #\A f "Hz"))

; Part B
; How much energy (in joules and electron volts) does it deliver to the receptor cells?
; Answer in the order indicated.
; Enter your answers in Joules and Electron Volts separated by a comma.

(define E-J (let ([h plancks-constant]
                  [wavelength (nm->m 505)]
                  [c lightspeed])
              (/ (* h c) wavelength)))

(define E-eV (J->eV E-J))

(displayln (qstr #\B
                 (string-append
                   (qcomma E-J E-eV)
                   " J, eV")))

; Part C
; To appreciate what a small amount of energy that is, calculate how fast a typical bacterium of pass 9.5e-12g would move if it had that much energy
; Express your answer in mm/s

; Consider the formula: KE = 1/2 m v^2
; So v = sqrt(2E/m)

(displayln
  (qnn #\C
       (m->mm (let ([E E-J]
                    [m (g->kg 9.5e-12)])
                (sqrt (/ (* 2 E) m))))
       "mm/s"))

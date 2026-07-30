#lang racket

(require "../lib/formatting.rkt")
(require "../lib/dimensional.rkt")
(require "../lib/constants.rkt")

; The following table lists work functions of a few common metals, measured in electron volts:
; Cesium - 1.9
; Potassium - 2.2
; Sodium - 2.3
; Lithium - 2.5
; Calcium - 3.2
; Copper - 4.5
; Silver - 4.7
; Platinum - 5.6

(define metal-table (hash 'cesium 1.9
                          'potassium 2.2
                          'sodium 2.3
                          'lithium 2.5
                          'calcium 3.2
                          'copper 4.5
                          'silver 4.7
                          'platinum 5.6))

(define (closest-metal phi table)
  (define min-diff #f)
  (define best-metal #f)
  (hash-for-each table
                 (lambda (metal wf)
                   (let ([diff (abs (- phi wf))])
                     (when (or (not min-diff) (< diff min-diff))
                       (set! min-diff diff)
                       (set! best-metal metal)))))
  best-metal)

; Part A
; Light with a wavelength of 190nm is incident on a metal surface.
; The most energetic electrons emitted from the surface are measured to have 4.0eV of kinetic energy.
; Which of the metals in the table is table is the surface most likely made of?

; Recall E = hc / lambda
; phi = E - K-max
; K-max = 4.0eV

(displayln
  (qstr #\A
        (let
          ([phi (let* ([h plancks-constant]
                       [wavelength (nm->m 190)]
                       [c lightspeed]
                       [K-max (eV->J 4.0)]
                       [E (/ (* h c) wavelength)])
                  (- E K-max))])
          (closest-metal (J->eV phi) metal-table))))

; Part B
; Of the eight metals listed in the table, how many will eject electrons when a green laser (lambda_g = 510nm) is shined on them?

(displayln
  (qn #\B
      (let* ([wavelength (nm->m 510)]
             [h plancks-constant]
             [c lightspeed]
             [E-photon (/ (* h c) wavelength)]
             [E-photon-eV (J->eV E-photon)])
        (for/sum ([wf (in-hash-values metal-table)])
          (if (>= E-photon-eV wf) 1 0)))))

; Part C
; Light with some unknown wavelength is incident on a piece of copper.
; The most energetic electrons emitted from the copper have 2.7eV of kinetic energy.
; If the copper is replaced with a piece of sodium, what will be the maximum possible kinetic energy K of the electrons emitted from this new surface.
; Enter your answer in electron volts

; phi-copper = E - K-max-copper
; We can calculate E and then do this:
; - K-max = phi - E
; K-max-sodium = E - phi-sodium

(displayln
  (qnn #\C
       (let* ([phi-copper (eV->J (hash-ref metal-table 'copper))]
              [K-max-copper (eV->J 2.7)]
              [E (+ phi-copper K-max-copper)])
         (J->eV (- E (eV->J (hash-ref metal-table 'sodium)))))
       "eV"))

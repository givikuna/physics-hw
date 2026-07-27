#lang racket

(require threading)

(require "../lib/dimensional.rkt")
(require "../lib/phy.rkt")
(require "../lib/formatting.rkt")
(require "../lib/math-utils.rkt")
(require "../lib/constants.rkt")

; Two protons (each with rest mass m=1.67e-27) are initially moving with equal speeds in opposite directions.
; The protons continue to exist after a collision that produces n0 particle.
; The rest mass of the n9 is mn = 9.75e-28

; Part A
; If the two protons and the n0 are all at rest after the collision, find the initial speed v of the protons
; express your answer in terms of c

; E-i-total = 2 * E-relativistic
; E-relativistic = gamma m_p c c
; So E-f-total = 2 m_p c c + m_n c c
; 2 gamma m_p c^2 = 2 m_p cc + m_n cc
; 2 gamma m_p = 2m_p + m_n
; 1 / sqrt(1 - (v/c)^2) = (2m_p + m_n) / (2 m_p)
; sqrt(1 - (v/c)^2) = 1 / ((2m_p + m_n) / (2 m_p))
; 1 - (v/c)^2 = (1 / ((2m_p + m_n) / (2 m_p)))^2
; (v/c)^2 = 1 - (1 / ((2m_p + m_n) / (2 m_p)))^2
; v/c = sqrt(1 - (1 / ((2m_p + m_n) / (2 m_p)))^2)
; v = c sqrt(1 - (1 / ((2m_p + m_n) / (2 m_p)))^2)

; So:

(define v-i-p
  (let ([m-p M-proton]
        [m-n M-neutron]
        [c lightspeed])
    (* c
       (sqrt (- 1 (sqr
                    (recip
                      (/
                        (+ m-n (* 2 m-p))
                        (* 2 m-p)))))))))

(displayln
  (qnn #\A
       (let ([c lightspeed])
         (/ v-i-p c))
       "c"))

; Part B
; What is the kinetic energy E-k of each proton
; Express your answer in MeV

(define E-p-k
  (let* ([m M-proton]
         [v v-i-p])
    (K-rel v m)))

(displayln
  (qnn #\B
       (J->MeV E-p-k)
       "MeV"))

; Part C
; What is the rest energy E_r of the neutron?
; Express your answer in MeV

(displayln
  (qnn #\C
       (let* ([m M-neutron])
         (kg->MeV m))
       "MeV"))

#lang racket

(require "../lib/constants.rkt")
(require "../lib/formatting.rkt")

; A beam of white light is incident on the surface of a diamond at an angle theta_a
; Since the index of refraction depends on the light's wavelength, the different colors that comprise white light will spread out as they pass through the diamond.
; The indices of refraction in diamond are n_red = 2.410 for red light and n_blue = 2.450 for blue light
; The surrounding air has n_air = 1.000
; Note that the angles in the figure are not to scale

; Part A

; Calculate v_red, the speed of red light in the diamond.
; To four sig figs

; Express your answers in meters per seconds

; Recall n = c/v
; so v = c/n

(define
  v-red
  (let* ([c lightspeed]
         [n 2.410])
    (/ c n)))

(displayln
  (string-append
    "a) "
    (nn v-red "m/s")))

; Part B

; Calculate v_blue, the speed of blue light in the diamond

(define
  v-blue
  (let*
    ([c lightspeed]
     [n 2.450])
    (/ c n)))

(displayln
  (string-append
    "b) "
    (nn
      v-blue
      "m/s")))

; Part C

; Derive a formula for delta, the angle between the red and blue refracted rays in the diamond

; Express the angle in terms of n-red, n-blue and theta_a use n_air = 1

; recall the formula n_i sin theta_i = n_refr sin theta_refr
; so:
;   n_i sin theta_i = n_refr sin theta_refr
;   theta_refr = asin (n_refr / sin_theta_1)
; thus:
; theta_r ....
; it'll derive easily and its self explanatory

(displayln
  (qstr
    #\c
    "arcsin(sin(θ_a) / n_red) - arcsin(sin(θ_a)/n_blue)"))

; Part D

; Calculate delta numerically for theta_a = 45 degrees

(define δ (let ([n-red 2.410]
                [n-blue 2.450]
                [θ-a 45])
            (let
              ([l (map
                    (lambda
                      (n)
                      (radians->degrees (asin (/ (sin (degrees->radians θ-a)) n))))
                    (list n-red n-blue))])
              (- (first l) (second l)))))

(displayln (qnn #\d δ " degrees"))

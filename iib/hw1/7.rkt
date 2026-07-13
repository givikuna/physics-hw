#lang racket

(require threading)

(require "../lib/formatting.rkt")
(require "../lib/math-utils.rkt")

; A beam of white light is incident on the surface of a diamond at an angle theta_a
; Since the index of refraction depends on the light's wavelength, the different colors that comprise the white light will spread out as they pass through the diamond
; For example, the indices of refraction in diamond are n_red=2.410 for red light and n_blue=2.450 for blue light
; Thus, blue light and red light are refracted at different angles inside the diamond
; as shown in the picture
; The surrounding air has n_air = 1.000
; Note that the angles in the figure are not to scale

; Part A

; Now consider theta_c, the angle at which the blue refracted ray hits the bottom surface of the diamond
; If theta_c is larger than the critical angle theta_crit the light will not be refracted out into the air but instead it will be totally internally reflected back into the diamond
; Find theta_crit

; Express your answer in degrees to four significant figures:

; To find theta_c recall that it must make theta_r 90 degrees
; thus: n_i sin theta_i = n_refr sin 90
;       sin theta_i = n_refr
;       theta_i = arcsin n_refr
;       theta_c = theta_i

(define blue-critical-angle
  (let
    ([n-refr 2.450])
    (~> n-refr
        recip
        asin
        radians->degrees)))

(displayln (qnn #\a blue-critical-angle " degrees"))

; Part B

; A diamond is cut such that the angle between its top surface and its bottom surface is alpha
; For alpha = 45 degrees find the largest possible value of the incident angle theta_a such that the blue light is totally internally reflected off the bottom surface

; Step 1:
; theta_crit = 24 degrees

; Rotate angles: theta_c = 45 - theta_blue
; Apply

; n_air sin(theta_a) = n_blue sin )theta_blue

(define theta_a
  (let*
    ([n-air 1.000]
     [n-blue 2.450]
     [theta-blue 20.9105])
    (~> theta-blue
        degrees->radians
        sin
        (* n-blue)
        (/ n-air)
        asin
        radians->degrees)))

(displayln (qnn #\b theta_a " degrees"))

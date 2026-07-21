#lang racket

(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")
(require "../lib/math-utils.rkt")

; Learning Goal:

; To be able to calculate locations and heights of images formed by spherical mirrors,
; as well as to understand qualities of such an image.

; In this problem, you will learn to use the spherical mirror equation:
; 1/s + 1/s' = 1/f

; This equation relates three quantities important to the formation of images with a spherical mirror:
; The object distance s is the distance from the mirror to the image, along the axis of the mirror
; The image distance s' is the distance from the mirror to the image, along the axis of the mirror
; The focal length f is an intrinsic property of the mirror.
; It is equal to half the radius of curvature R (i.e. f = R/2)

; The equation given above allows you to calculate teh locations of images and objects.
; Frequently, you will also be interested in he size of an image or object.
; The ratio of the size of an image ot the size of the object is called the magnification
; It is given by
; m = y' / y = - s' / s

; Where y' is the height of the image, and y is the height of the objet.
;The second equality allows you to find the size of hte image (or object) with the information provided by the spherical mirror equation

; All the quantities in the above equations can take both positive and negative values.
; Positive distances correspond to real images or objects,
; while negative distances correspond to virtual images or objects.
; Positive heights correspond to upright images or objects
; while negative heights correspond to inverted images or objects

; The following table summarizes with information:

; Value   |   Positive      |      Negative
;    s    |     Real        |      Virtual
;   s'    |    Real         |      Virtual
;    y    |    Upright       |     Inverted
;   y'    |   Upright       |     Inverted

; Focal length can also take positive and negative values.
; Positive f corresponds to a concave mirror, while negative f corresponds to a convex mirror

; While it is possible for s or y to be negative, this can only happen in situations with multiple mirrors or mirrors and lenses.
; In this problem, you will consider only a single mirror, so s and y will be positive

; You will begin with a relatively standard calculation.
; Consider a concave spherical mirror with a radius of curvature equal to 60cm
; An object 6.00cm tall is placed along the axis of the mirror
; 45.0cm from the mirror
; You are to find the location and height of the image

; Part A
; What is the focal length f of this mirror in cm

(define f (let* ([R (cm->m 60)]) (/ R 2.0)))

(displayln (qnn #\A (m->cm f) "cm"))

; Part B
; Now use the spherical mirror equation to find the image distance s'
; express your answer in cm

(define s-prime
  (let*
    ([s (cm->m 45)])
    (recip (- (recip f) (recip s)))))

(displayln (qnn #\B (m->cm s-prime) "cm"))

; Part C
; Find the magnification m, using s and s'

; recall, m = -s'/s

(define m
  (let*
    ([s (cm->m 45)])
    (neg (/ s-prime s))))

(displayln (qnn #\C m ""))

; Part D
; Finally, use the magnification to find the height of the image y'
; express your answer in cm

; recall: m = y' / y
; so y' = m * y

(define y-prime
  (let*
    ([y (cm->m 6)])
    (* m y)))

(displayln (qnn #\D (m->cm y-prime) "cm"))

; Part E
; Look at the signs of your answers to determine which of the following describes the image formed by this mirror:

(displayln "real and inverted")

; Next, you will manipulate the spherical mirror equation to explore the qualities (real/virtual and upright/inverted) of some images

; These're all symbolic I'm not writing these

#lang racket

(require threading)

(require "../lib/math-utils.rkt")
(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")

; A concave lens refracts parallel rays in such a way that they are bent away from the axis of the lens.
; For this reason, a concave lens is referred to as a diverging lens

; Part A
; Consider the following diagrams (1,2,3,4) -> (A,B,C,D)
; Where F represents the focal point of a concave lens
; In these diags, the image formed by the lens is obtained using the ray tracing technique
; Which diags are accurate

(displayln
  (qstr
    #\A
    (string-append
      (~a #\A)
      (string-append ", " (~a #\C)))))

; Part B
; If the focal length of the concave lens is -7.5cm
; At what distance do from the lens should an object be placed so that its image is formed 3.7cm from the lens

; recall 1/f = 1/di + 1/do
; do = 1 / (1/f - 1/di)

; focal length IS negative
; but so should di be negative, because, the image would be virtual
; recall: all images from concave lenses are virtual

(define d0
  (let ([f (cm->m -7.5)]
        [di (cm->m -3.7)])
    (recip (- (recip f) (recip di)))))

(displayln (qnn #\B (~> d0 m->cm abs) "cm"))

; Part C
; What is the magnification m produced by the concave lens described in part B
; express your answer numerically

; recall: magnification is m = -di / do

(define m
  (let ([di (cm->m -3.7)])
    (neg (/ di d0))))

(displayln (qn #\C m))

; Part C
; Where should the object be moved to have a larger magnification
; The object should be moved closer to the lens
; Because, then the distance do is smaller, which makes m bigger, because math

(displayln (qstr #\D "The object should be moved closer to the lens."))

#lang racket

(require "../lib/dimensional.rkt")
(require "../lib/constants.rkt")
(require "../lib/formatting.rkt")

; A communications satellite orbiting the earth has solar panels that completely absorb all sunlight incident upon them.
; The total rea A of the panels is 10m^2

; Part A

; The intensity of the sun's radiation incident upon the Earth is about I=1.4kW/m^2
; Suppose this is the value for the intensity of sunlight incident upon the satellite's solar panels.
; What is the total solar power P absorbed by panels?
; express your answer in kilowatts to two significant figures

; P absorbed by panels would be I * A
; so:

(define P (let* ([I 1.4]
                 [A 10])
            (* I A)))

(displayln (string-append "a) " (number->string P) "kW"))

; Part B

; What is the force F on the panels exerted by radiation pressure from the sunlight?
; express your answer in Newtons

; recall that F=IA/c

(define F (let* ([I (kW->W 1.4)]
                 [A 10]
                 [c lightspeed])
            (/ (* I A) c)))

(displayln (string-append "a) " (nn F "N")))

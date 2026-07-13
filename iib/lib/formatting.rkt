#lang racket

(define (nn n1 n2)
  (string-append (number->string n1) n2))

(provide nn)

#lang racket

(define (nn n1 s1)
  (string-append (number->string n1) (~a s1)))

(define (qnn s1 n1 s2)
  (string-append (string-append (~a s1) ") ") (number->string n1) (~a s2)))

(define (qstr s1 s2)
  (string-append (string-append (~a s1) ") ") (~a s2)))

(provide nn qnn qstr)

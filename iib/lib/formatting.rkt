#lang racket

(define (nn n1 s1)
  (string-append (number->string n1) (~a s1)))

(define (qnn s1 n1 s2)
  (string-append (string-append (~a s1) ") ") (number->string n1) (~a s2)))

(define (qstr s1 s2)
  (string-append (string-append (~a s1) ") ") (~a s2)))

(define (qn s1 n1)
  (string-append (string-append (~a s1) ") ") (number->string n1)))

(define (qscomma s1 s2)
  (string-append (~a s1) (string-append ", " (~a s2))))

(define (qcomma n1 n2)
  (qscomma (number->string n1) (number->string n2)))

(provide
  nn
  qnn
  qstr
  qn
  qscomma
  qcomma)

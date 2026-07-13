#lang racket

(define (km->m km)
  (* km 1000))

(define (kW->W kW)
  (* kW 1000))

(define (W->kW W)
  (/ W 1000))

(provide km->m kW->W W->kW)

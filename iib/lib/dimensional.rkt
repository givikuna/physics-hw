#lang racket

(define (km->m km)
  (* km 1000))

(define (cm->m cm)
  (/ cm 100))

(define (m->cm m)
  (* m 100))

(define (kW->W kW)
  (* kW 1000))

(define (W->kW W)
  (/ W 1000))

(define (μs->s μs)
  (* μs 1e-6))

(define (s->μs s)
  (* s 1000000))

(define (decades->years decades)
  (* decades 10))

(define (years->days years)
  (* years 365))

(define (days->hours days)
  (* days 24))

(define (hours->minutes hours)
  (* hours 60))

(define (minutes->seconds minutes)
  (* minutes 60))

(define (seconds->minutes seconds)
  (/ seconds 60))

(define (minutes->hours minutes)
  (/ minutes 60))

(define (hours->days hours)
  (/ hours 24))

(define (days->years days)
  (/ days 365))

(define (years->hours years)
  (* (years->days years) 24))

(define (years->minutes years)
  (* (years->hours years) 60))

(define (years->seconds years)
  (* (years->minutes years) 60))

(define (days->minutes days)
  (* (days->hours days) 60))

(define (days->seconds days)
  (* (days->minutes days) 60))

(define (hours->seconds hours)
  (* (hours->minutes hours) 60))

(define (seconds->hours seconds)
  (minutes->hours (seconds->minutes seconds)))

(define (seconds->days seconds)
  (hours->days (seconds->hours seconds)))

(define (seconds->years seconds)
  (days->years (seconds->days seconds)))

(define (minutes->days minutes)
  (hours->days (minutes->hours minutes)))

(define (minutes->years minutes)
  (days->years (minutes->days minutes)))

(provide
  km->m
  cm->m
  m->cm
  kW->W
  W->kW
  μs->s
  s->μs
  decades->years
  years->days
  days->hours
  hours->minutes
  minutes->seconds
  years->hours
  years->minutes
  years->seconds
  days->minutes
  days->seconds
  hours->seconds
  seconds->minutes
  minutes->hours
  hours->days
  days->years
  seconds->hours
  seconds->days
  seconds->years
  minutes->days
  minutes->years)

#lang racket

; LOCALS

(define lightspeed 2.998e8) ; m/s
(define elem-charge 1.60217663e-19) ; C

; SLACOL

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

(define (kg->lb kg)
  (* kg 2.20462))

(define (lb->kg lb)
  (* lb 0.453592))

(define (lb->ton lb)
  (/ lb 2000))

(define (ton->lb ton)
  (* ton 2000))

(define (kg->ton kg)
  (lb->ton (kg->lb kg)))

(define (ton->kg ton)
  (lb->kg (ton->lb ton)))

(define (kg->eV kg)
  (/ (* kg (sqr lightspeed)) elem-charge))

(define (eV->kg eV)
  (/ (* eV elem-charge) (sqr lightspeed)))

(define (eV->GeV eV)
  (* eV 1e-9))

(define (GeV->eV GeV)
  (* GeV 1e9))

(define (kg->GeV kg)
  (eV->GeV (kg->eV kg)))

(define (GeV->kg GeV)
  (eV->kg (GeV->eV GeV)))

(define (eV->J eV)
  (* eV 1.60218e-19))

(define (J->eV J)
  (* J 6.242e18))

(define (eV->MeV eV)
  (* eV 1e-6))

(define (MeV->eV MeV)
  (* MeV 1000000))

(define (J->MeV J)
  (eV->MeV (J->eV J)))

(define (MeV->J MeV)
  (eV->J (MeV->eV MeV)))

(define (kg->MeV kg)
  (eV->MeV (kg->eV kg)))

(define (MeV->kg MeV)
  (eV->kg (MeV->eV MeV)))

(define (m->nm m)
  (* m 1e9))

(define (nm->m nm)
  (* nm 1e9))

(provide
  nm->m
  m->nm
  kg->MeV
  MeV->kg
  eV->MeV
  MeV->J
  MeV->eV
  J->MeV
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
  minutes->years
  kg->lb
  lb->kg
  lb->ton
  ton->lb
  kg->ton
  ton->kg
  kg->eV
  eV->kg
  eV->GeV
  GeV->eV
  kg->GeV
  GeV->kg
  eV->J
  J->eV)

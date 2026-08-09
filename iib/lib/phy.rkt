#lang racket

(require "./math-utils.rkt")
(require "./constants.rkt")
(require "./list.rkt")

(define (gamma v)
  (recip (sqrt (- 1 (sqr (/ v lightspeed))))))

(define (K-nonrel v m)
  (* (* 0.5 m) (sqr v)))

(define (K-rel v m)
  (abs (let* ([c lightspeed]
              [γ (gamma v)])
         (* (- 1 γ) (* m (sqr c))))))

(define (wien-lambda T)
  (/ wien-displacement T))

(define (E-photon wavelength)
  (/ (* lightspeed plancks-constant) wavelength))

(define (newtonian-momentum m v)
  (* m v))

(define (de-broglie-wavelength p)
  (/ plancks-constant p))

(define (rest-energy m)
  (* m (sqr lightspeed)))

(define (balmer-serie n)
  (* rydberg-constant (- (recip (sqr 2)) (recip (sqr n)))))

(define (rydberg-formula m n)
  (* rydberg-constant (- (recip (sqr m)) (recip (sqr n)))))

(define (K-nonrel-from-momentum p m)
  (/ (sqr p) (* 2 m)))

(define (x-uncertainty-v-f1-f2 v f1 f2)
  (/ v (- f1 f2)))

(define (x-uncertainty-v-delta-f v delta-f)
  (/ v delta-f))

(define (momentum-uncertainty-x delta-x)
  (/ (/ hbar 2) delta-x))

(define (position-uncertainty-p delta-p)
  (momentum-uncertainty-x delta-p))

(define (bohr-radius-Z-n Z n)
  (* bohr-radius (/ (sqr n) Z)))

(define (hydrogen-radius-n n)
  (bohr-radius-Z-n 1 n))

(define (orbital-quantum-numbers n)
  (count-to 0 (- n 1)))

(define (magnetic-quantum-numbers l)
  (count-to (* -1 l) l))

(define (quantum-L-max-n n)
  (* hbar (sqrt (* (- n 1) n))))

(define (electron-shell-n n)
  (case n
    [(1) #\K]
    [(2) #\L]
    [(3) #\M]
    [(4) #\N]
    [(5) #\O]))

(define (electron-subshell-l l)
  (match l
    [0 #\s]
    [1 #\p]
    [2 #\d]
    [9 #\g]
    [_ #\f]))

(provide
  quantum-L-max-n
  electron-subshell-l
  electron-shell-n
  magnetic-quantum-numbers
  orbital-quantum-numbers
  bohr-radius-Z-n
  hydrogen-radius-n
  x-uncertainty-v-delta-f
  x-uncertainty-v-f1-f2
  gamma
  K-nonrel
  K-rel
  wien-lambda
  E-photon
  newtonian-momentum
  de-broglie-wavelength
  rest-energy
  balmer-serie
  rydberg-formula
  K-nonrel-from-momentum
  momentum-uncertainty-x
  position-uncertainty-p
  )

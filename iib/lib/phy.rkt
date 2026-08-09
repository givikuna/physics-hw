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

(define (quantum-L-max-l l)
  (* hbar (sqrt (* l (+ 1 l)))))

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

(define (electron-subshell-orientations-count-l l)
  (* 2 (+ (* 2 l) 1)))

(define (z-orbital-L-ml m-l)
  (* m-l hbar))

(define (z-spin-L-ms ms)
  (* ms hbar))

(define (mk-electron-state n l m-l m-s)
  (list n l m-l m-s))

(define (check-electron-state estate)
  (let ([n (first estate)]
        [l (second estate)]
        [m-l (third estate)]
        [m-s (fourth estate)])
    (and (exact-positive-integer? n)
         (and (integer? l) (>= l 0) (< l n))
         (and (integer? m-l) (<= m-l l) (<= (* -1 l) m-l))
         (and (roughly-point-five? m-s)))))

(define (spectroscopic-notation estate)
  (let ([n (first estate)]
        [l (second estate)])
    (string-append (number->string n) (~a (electron-subshell-l l)))))

(provide
  spectroscopic-notation
  check-electron-state
  mk-electron-state
  z-spin-L-ms
  z-orbital-L-ml
  quantum-L-max-l
  electron-subshell-orientations-count-l
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
  position-uncertainty-p)

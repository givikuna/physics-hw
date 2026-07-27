#lang racket

(require threading)

(require racket/function)

(require "../lib/formatting.rkt")
(require "../lib/constants.rkt")
(require "../lib/math-utils.rkt")

; Learning Goal:
; To understand length contraction and time dilation.

; An inertial frame of reference is one in which Newton's laws hold.
; Any frame of reference that moves at a constant speed relative to an inertial frame of reference is also an inertial frame.
; The proper length l0 of an object is defined to be the length of the object as measured in the object's rest frame.
; If the length of the object is measured in any other inertial frame,
; moving with speed v relative to the object's rest frame (in a direction parallel to l0).
; The resulting length l is given by the length contraction equation:
; l = l0 sqrt ( 1 - (v/c)^2 )
; where c is the speed of light.
; Similarly, if two events occur at the same spatial point in a particular reference frame,
; and an observer at rest in this frame measures the time interval between these two events.
; the time interval so measured is defined to be the proper time delta t0.
; When the time interval is measured in any other inertial frame,
; again moving with speed v relative to the first frame,
; the resulting time interval delta-t is given by the time dilation equation:
; delta-t = delta-t-0 / sqrt(1 - (c/v)^2)

; Part A
; Suppose that you measure the length of a spaceship, at rest relative to you, to be 400m.
; How long will you measure it to be if it flies past you at a speed of v = 0.75c

(displayln
  (qnn #\A
       (let* ([l0 400]
              [c lightspeed]
              [v (* 0.75 c)]
              [γ (recip (sqrt (- 1 (sqr (/ v c)))))]
              [l (/ l0 γ)])
         (identity l))
       "m"))

; Part B
; The spaceship from Part A has a large clock attached to its side.
; This clock ran at the same rate as your watch when you were in the same reference frame.
; How much time delta-t will pass on your watch as 80s passes on the clock attached to the ship.
; express your answer in seconds

(displayln
  (qnn #\B
       (let* ([delta-t-0 80]
              [c lightspeed]
              [v (* 0.75 c)]
              [γ (~> v
                     ((lambda (x) (/ x c)))
                     sqr
                     ((lambda (x) (- 1 x)))
                     sqrt
                     recip)]
              [delta-t (* delta-t-0 γ)])
         (identity delta-t))
       "s"))

; Two spaceships, named A and B are flying toward each other with relative speed 0.800c

; Part C
; If the captain of ship A fires a missile, counts 10s on his watch, and then fires a second missile, how much time delta-t will the captain of ship B measure to have passed between the firing of the two missiles?
; Express your answer in seconds

(displayln
  (qnn #\C
       (let* ([c lightspeed]
              [v (* 0.8 c)]
              [delta-t-0 10]
              [γ (recip (sqrt (- 1 (sqr (/ v c)))))]
              [delta-t (* delta-t-0 γ)])
         (identity delta-t))
       "s"))

; Part D
; The captain of ship B knows that Ship A uses 2m long missiles.
; She measures the length of the first missile,
; Once it has finished accelerating, and finds it to be only 0.872m long.
; What is the speed v of the missile, relative to ship B?
; express your answer in m/s

; sqrt ((1 - (l / l0)^2) * c)

(displayln
  (qnn #\D
       (let* ([c lightspeed]
              [l0 2]
              [l 0.872]
              [v (sqrt (* (- 1 (sqr (/ l l0))) (sqr c)))])
         (identity v))
       "m/s"))

; It should be noted that the same equations apply to events in your everyday life.
; The reason that you didn't notice them is that objects in your everyday life move so much slower than the speed of light.
; Now let's look at the differences in measurements between two frames moving relative to one another at a speed of 30 m/s.
; Your calculator may not be able to store enough digits to work these problems accurately, so you may need to use the approximations from the binomial expansion:
; 1/(sqrt 1 - (v/c)^2) = 1 + (v/c)^2/2
; and
; sqrt(1 - (v/c)^2) = 1 - (v/c)^2/2

; Part E

; What would be the difference between the time t measured by an observer moving at 30 m/s and the proper time t0 for a proper time interval of 1 hour (3600s)?
; The answer is small but nonzero.
; You will need to find an expression from the time difference using the approximation given in this problem before you substitute in the numbers
; otherwise your calculator will just give zero
; express your answer in seconds
; use c=3e8

(displayln
  (qnn #\E
       (let* ([c c-less-precise]
       [t0 3600]
       [v 30]
       )
         (identity 1))
       #\s))
#lang racket

(require "../lib/formatting.rkt")
(require "../lib/phy.rkt")

; Consider an electron in the state n=4, l=3, m=2, s=1/2

; Part A
; In what shell is this electron located

(displayln (qstr #\A (electron-shell-n 4)))

; Part B

; In what subshell is this electron located?

(displayln (qstr #\B (electron-subshell-l 3)))

; Part C

; How many other electrons could occupy the same subshell as this electron?


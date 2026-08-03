#lang racket

; Learning Goal:
; To use the wave function for a particle in a box to calculate the probability that the particle is found in various regions within the box.

; The quantum mechanical probability that a particle described by the normalized wave function psi(x) is found in the region between x=a and x=b is:
; P = int_a^b dx |psi(x)|^2

; The specific example of a particle trapped in an infinitely deep potential well, sometimes called a particle in a box, serves as a good practice for calculating these probabilities, because the wave functions for this situation are easy to write down.
; If the ends of the box are at x=0 and x=L, then the allowed wave functions are:
; psi(x) = sqrt(2/L) sin(npi x/L) for 0 \leq x \leq L
; 0 for all other x
; where n=1 is the ground-state wave function, n=2 is the first excited state, etc.

; Part A
; If the particle in the box is in the second excited state (i.e. n=3) what is the probability P that it is between x=L/3 and x=L?
; To find this probability, you will need to evaluate the integral:
; holy shit i'm not typing that out here
; this'll be in obsidian


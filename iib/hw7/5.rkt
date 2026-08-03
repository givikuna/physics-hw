#lang racket

; Learning goal
; To become familiar with the Schrodinger equation and its solution for the simple case of the particle in a box.
; The most important equation in quantum mechanics is the Schrodinger equation:
; - hbar^2/(2m) (d^2/dx^2 phi) + U(x)phi = E phi

; Given the potential energy function U(x), solving the Schrodinger equation allows you to determine the particle wave functions.
; Finding solutions ot the Schrodinger equation, for most potentials, is beyond the scope of introductory physics.
; However, you are able to check a solution, once it is presented to you.
; You will do this for the simple case of the particle in a box.

; The quantum mechanical particle in a box has a particularly simple potential energy function.
; Although it does have some real-world applications, the particle in a box is also important as an illustration of many key concepts from quantum mechanics.

; Consider a particle in a potential well with infinitely high walls.
; The potential energy function is formally written as:
; U(x) = if 0   => 0\leq x \leq L
;        if inf => x < 0 or x > L
; where L is the width of the box.
; It is claimed that each of the functions:
; phi_n(x) = C sin(n pi x / L) => 0 \leq x \leq L
;            0                 => x < 0 or x > L
; for n = 1,2,3... is a solution to the Schrodinger equation for the particle in a box.
; You will prove this and calculate the proper value for C.

; By inspection, you should be able to see that phi=0 is a mathematical solution to any Schrodinger equation, so the functions phi_n(x) are clearly valid solutions outside the interval 0 \leq x \leq L

; Part A
; Consider the interval 0 \leq x \leq L.
; What is the second derivative, with respect to x, of the wave function phi_n(x) in this interval?
; Express your answer in terms of n,x,L, and C

; The answer to this is on paper & obsidian for A-F

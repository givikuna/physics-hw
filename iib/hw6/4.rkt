#lang racket

(require "../lib/formatting.rkt")
(require "../lib/phy.rkt")
(require "../lib/constants.rkt")

; Learning Goal:
; To understand de-broglie waves and the calculation of wave properties.
; In 1924, Louis de Broglie postulated that particles such as electrons and protons might exhibit wavelike properties.
; His thinking was guided by the notion that light has both wave and particle characteristics,
; so he postulated that particles such as electrons and protons would obey the same wavelength-momentum relation as that obeyed by light: lambda=h/p where lambda is wavelength, p is momentum, and h is planck's constant.

; Part A
; find the de Broglie wavelength lambda for an electron moving at a speed of 1e6m/s (Note that this speed is low enough that the classical momentum formula p=mv is still valid.)
; Recall that the mass of an electron is me = 9.11e-31kg

(define dbw1 (de-broglie-wavelength (newtonian-momentum M-electron 1.0e6)))

(displayln (qnn #\A dbw1 #\m))

; Part B
; Find the de Broglie wavelength of a baseball pitched at a speed of 42.8m/s
; Assume the mass of the baseball is 0.143kg.

(define dbw2 (de-broglie-wavelength (newtonian-momentum 0.143 42.8)))

(displayln (qnn #\B dbw2 #\m))

; Part C
; Consider a beam of electrons in a vacuum, passing through a very narrow slit of width 2.00 micrometers.
; The electrons then head toward an array of detectors a distance 0.9100m away.
; These detectors indicate a diffraction pattern, with a broad maximum of electron intensity (i.e., the number of electrons received in a certain area over a certain period of time) with minima of electron intensity on either side, spaced 0.495cm from the center of the pattern.
; What is the wavelength lambda of one of the electrons in this beam?
; Recall that the location of the first intensity minima in a single slit diffraction pattern for light is y=L lambda /  where L is the distance to the screen and a is the width of the slit.
; The derivation of this formula was based entirely upon the wave nature of light, so by de Broglie's hypothesis it'll also apply to the case of electron waves.

; TBA

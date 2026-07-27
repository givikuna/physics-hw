#lang racket

(require "../lib/dimensional.rkt")
(require "../lib/phy.rkt")
(require "../lib/formatting.rkt")
(require "../lib/constants.rkt")

; A blackbody is a substance that absorbs radiation of all wavelengths and radiates in a continuous spectrum at all wavelengths.
; It is given the name blackbody because an object that absorbs light at all wavelengths appears black to the human eye.
; By the end of the 19th century, several properties of blackbody radiation had been established.
; First, the total intensity I (the average rate of radiation of energy per unit surface area) emitted from a blackbody was shown to be proportional to the fourth power of its temperature.
; I = sigma T^4
; This is called the Stefan-Boltzmann Law for a blackbody.
; The constant of proportionality sigma is known as the stefan-boltzmann constant and was determined to be:
; sigma = 5.67e-8W/(m^2*K^4)
; It had also been discovered that the wavelength at which the radiation intensity was maximum varied inversely with temperature.
; This result, known as the Wien displacement law, is written:
; lambda_m T = 2.9e-3 (m * K)
; where lambda_m is the wavelength with the greatest radiated intensity

; Part A
; Consider a blackbody that radiates with an intensity I-1 at a room temperature of 300K.
; At what intensity I-2 will this blackbody radiate when it is at a temperature of 400K?
; Express your answer in terms of I-1

; sigma T-2^4 / sigma T-1^4 = (T-2 / T-1)^4
; (400/300)^4

(displayln (qnn #\A
                (expt (/ 4.0 3) 4)
                " I_1"))

; Part B
; At what wavelength lambda_m would the intensity of blackbody radiation be at a maximum when the blackbody is at 2900K?
; express your answer in nanometers

(displayln (qnn #\B
                (m->nm (wien-lambda 2900))
                "nm"))

; Part C
; An astronomer is trying to estimate the surface temperature of a star with a radius of 5e8m by modelling it as an ideal black body.
; The astronomer has measured the intensity of radiation due to the star at a distance of 2.5e13m and found it to be equal to 0.055W/m^2.
; Given this information, what is the temperature of the surface of the star

; Recall: P = I_surface * (4 pi R^2) = I_d (4 pi d^2)
; So: I_surface = I_d (d / R)^2

(displayln (qnn #\C
                (exact-round
                  (let* ([I-d 0.055]
                         [d 2.5e13]
                         [r 5e8]
                         [I-surface (* I-d (sqr (/ d r)))])
                    (expt (/ I-surface stefan-boltzmann) (/ 1.0 4))))
                #\K))

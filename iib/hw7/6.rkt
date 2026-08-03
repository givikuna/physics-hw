#lang racket

(require "../lib/constants.rkt")
(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")

; Though the particle in a box (infinite potential well) seems like a very unrealistic potential, it can actually be used to explain a bit about how humans see.
; The important light-absorbing molecule in human eyes is called retinal.
; Retinal consists of a chain of carbon atoms, roughly 1.5e-9m long.
; An electron in this long chain molecule behaves very much like a particle in a box.

; Part A
; Find the wavelength lambda_n of the photon that must be absorbed by an electron to move it from the nth state of a box to the (n+1)th state.
; Assume that the box has length L and that the electron has mass m.
; Express your answer in terms of n, L, hbar, c, and m.

; Recall the formula for the energy levels of an electron of mass m in a one-dimensional box (infinite potential well) of length L:
; E_n = n^2h^2 / 8mL^2
; Or: E_n = pi^2 hbar^2 n^2 / 2 m L^2

; The energy of the photon required to move the electron from the nth state to the (n+1)th state is the difference between these two energy levels (delta-E).
; delta-E = E_{n+1} - E_n
; delta-E = ( pi^2 hbar^2 (n+1)^2 / (2 m L^2) ) - pi^2 hbar^2 n^2 / 2 m L^2
; So: delta-E = (pi^2 hbar^2 (2n+1)) / 2 m L^2

; The energy of the absorbed photon is given by hc/lambda_n (in hbar terms: 2pi hbar c / lambda_n)

; So:
; 2pi hbar c / lambda_n = (pi^2 hbar^2 (2n+1)) / 2 m L^2
; Isolate lambda_n: lambda_n = 4mL^2c/(pi hbar (2n+1))

(displayln (qstr #\A "lambda_n = 4mL^2c/(pi hbar (2n+1)"))

; Part B

; The retinal molecule has 12 electrons that are free to move about the chain.
; For reasons that you may learn later, these 12 electrons fill the first 6 states of the box (with 2 electrons in each state) (Fig 1).
; Thus, the lowest energy photon that can absorbed by this molecule would be one that moves an electron from the 6th state to the 7th state.
; Use the equation that you found in Part A to determine the wavelength lambda of this photon.
; Use the length of the retinal molecule given in the introduction to determine the wavelength lambda of this photon.
; Use the length of the retinal molecule given in the introduction as the length of the box and use m=9.11e-31kg for the mass of the electron.
; Express your answer in nanometers to two sig figs.

(define lmbd (let ([m 9.11e-31] [h hbar] [n 6] [c lightspeed] [L 1.5e-9])
               (/ (* 4 (* m (* (sqr L) c)))
                  (* pi (* h (+ (* 2 n) 1))))))

(displayln (qnn #\B (m->nm lmbd) "nm"))

; Part C
; In a human eye, there are three types of cones that allow us to see colors.
; The three different types are most sensitive to red, green, and blue light, respectively.
; All three contain retinal bonded to a large protein.
; The way that retinal bonds to the protein can change the length of the potential well within which the electrons are confined.
; How would the length have to change from that given in the introduction to make the molecule more sensitive to blue or red light.

; (1) The molecule would have to be shorter to be more sensitive to both red and blue light
; (2) The molecule would have to be shorter to be more sensitive to red light and longer to be more sensitive to blue light
; (3) The molecule would have to be longer to be more sensitive to red light and shorter to be more sensitive to blue light
; (4) The molecule would have to be longer to be more sensitive to both red and blue light.

; Sol'n:

; From the equation derived in part A we found that the wavelength of the absorbed photon is directly proportional to the square of the length of hte box.
; Thus, if the length increases, the wavelength of light it absorbs also increases.
; Conversely, if the molecule becomes shorter, it absorbs light with a shorter wavelength.
; Red light has longer and blue shorter.
; Thus, to absorb red light, the required length of the potential well must be longer.
; Then, for blue light it must be shorter.
; Therefore, the correct choice is the third option:
; The molecule would have to be longer to be more sensitive to red light and shorter to be more sensitive to blue light.

(displayln (qstr #\C "The molecule would have to be longer to be more sensitive to red light and shorter to be more sensitive to blue light"))

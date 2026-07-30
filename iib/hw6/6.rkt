#lang racket

(require "../lib/dimensional.rkt")
(require "../lib/formatting.rkt")
(require "../lib/math-utils.rkt")
(require "../lib/phy.rkt")

; When a low-pressure gas of hydrogen atoms is placed in a tube and a large voltage is applied to the end of the tube, the atoms will emit electromagnetic radiation and visible light can be observed.
; If this light passes through a diffraction grating, the resulting spectrum appears as a pattern of four isolated, sharp parallel lines, called spectral lines.
; Each spectral line corresponds to one specific wavelength that is present in the light emitted by the source.
; Such a discrete spectrum is referred to as a line spectrum.

; By the early 19th century, it was found that discrete spectra were produced by every chemical element in its gaseous state.
; Even though these spectra were found to share the common feature of appearing as a set of isolated lines, it was observed that each element produces its own unique pattern of lines.
; This indicated that the light emitted by each element contains a specific set of wavelengths that is characteristic of that element.

; The first quantitative description of the hydrogen spectrum was given by Johann Balmer, a Swiss school teacher, in 1885. By trial and error, he found that the correct wavelength lambda of each line observed in the hydrogen spectrum was given by:
; 1/lambda = R(1/2^2 - 1/n^2).
; where R is a constant, later called the Rydberg Constant, and n may have the integer values of 3,4,5,...
; If lambda is in meters, the numerical value of the Rydberg constant (determined from measurements of wavelengths) is R=1.097e7 (1/m)
; Balmer knew only the four lines in the visible spectrum of hydrogen.
; Thus, the original formula was written for a limited set of values of n.
; However, as more techniques to detect other regions of the spectrum were developed, it became clear that Balmer's formula was valid for all values of n.
; The entire series of spectral lines predicted by Balmer's formula is now referred to as the Balmer series.

; Part A
; What is the wavelength of line corresponding to n=4 in the Balmer series.

(displayln (qnn #\A (m->nm (recip (balmer-serie 4))) "nm"))

; Part B
; What is the wavelength of line corresponding to n=5 in the Balmer series?

(displayln (qnn #\B (m->nm (recip (balmer-serie 5))) "nm"))

; Part C
; What is the smallest wavelength in the Balmer series?

(displayln (qnn #\C (exact-round (m->nm (recip (balmer-serie 1000)))) "nm"))

; Part D
; Largest

(displayln (qnn #\D (m->nm (recip (balmer-serie 3))) "nm"))

; Part E
; What is the smallest value of n for which the wavelength of a Balmer series line is smaller than 400nm, which is the lower limit for wavelengths in the visible spectrum?
+
(displayln (qn
             #\E
             (let re ([n 3])
               (if (< (m->nm (recip (balmer-serie n))) 400)
                   n
                   (re (+ n 1))))))

; Encouraged by the success of Balmer's formula, other scientists extended the formula by simply changing the term 2^2 term ot 1^2 or 3^2, or more generally to m^2, and verified the existence of the corresponding wavelengths in the hydrogen spectrum.
; The resulting formula contains two integers m and n:
; 1 / lambda = R (1/m^2 - 1/n^2)
; Where R is rydberg.
; The other formulae give other sets of lines or series named after their discoverers.
; For each value m, n = m+1,m+2,...

; TBA

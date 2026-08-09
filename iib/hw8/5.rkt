#lang racket

(require "../lib/dimensional.rkt")
(require "../lib/constants.rkt")
(require "../lib/formatting.rkt")

; Learning Goal
; To understand and be able to perform simple calculations relating to the Zeeman effect

; The Zeeman effect is a change in the energy levels of electrons in an atom in the presence of a magnetic field.
; It can be observed as the splitting of spectral lines when the atom is in a strong magnetic field.
; To understand this effect, you need to recall a few facts about magnetic moments.

; When a loop of wire with a current running through it is placed in a magnetic field, it acquires a potential energy U=-mu*B where B is the magnetic field,, mu is the magnetic moment of the direction determined by applying the right-hand rule to the direction of current flow.
; The magnitude of mu is given by |mu|=IA, where I is the current in the loop and A is the area enclosed by the loop.

; In the Bohr model of the atom, electrons follow circular orbits around the nucleus.
; Such an orbit would constitute a loop of current, since the electron  has charge and moves repeatedly through the same circular path.
; While the Bohr model if fundamentally incorrect, its conclusions about electrons interacting with magnetic fields can be used as a basis for correctly understanding the Zeeman effect.

; Consider an electron moving in a circular orbit of radius r at a speed v.
; The orbit will serve as the loop of current as you calculate the magnetic moment.

; Part A
; What is the area A enclosed by the electron's orbit?
; Express your answer in terms of r.

(displayln (qstr #\A "πr^2"))

; Part B

; What is the current I due to the orbit of the electron?
; Recall that the current is defined as the amount of charge passing a point in one unit of time.
; Use -e for the charge on an electron.

; I = -e/T = -ev / 2pir where T =2pir/v and is the period of the orbit.

(displayln (qstr #\B "-ev/2pir"))

; Part C

; What is the magnitude mu=|mu| of the magnetic moment of the orbiting electron?
; Express your answer in terms of e, v, and r

; |u|=IA=(ev/2pir)(pir^2)=evr/2

(displayln (qstr #\C "evr/2"))

; Part D

; In the Schrodinger picture of the hydrogen atom, the electrons are waves with associated probability distributions.
; Thus, v and r are not well-defined quantities.
; However, the angular momentum is a well-defined quantity.
; Use the classical definition of angular momentum L=mvr
; where m is the mass of the electron
; to find the expression for the magnitude mu of the magnetic moment of the electron

; mu=|mu|=e/2 * L/m = eL/2m

(displayln (qstr #\D "El/2m"))

; Part E

; Consider a magnetic field of magnitude B oriented along the axis.
; The energy associated with the interaction of this field with an orbiting electron with magnetic moment mu is U=-mu*B.
; Since you know the mag field is oriented along the z axis, this inner product will be equal to -mu_zB where mu_z is the z component of the magnetic moment.
; Since the only part of the expression for the electron's magnetic momentum that has direction is the angular momentum L, we conclude that mu_z=-eL_z/2m

; You know that in the Schrodinger picture of the hydrogen atom, the angular momentum component in a specific direction (here we are concerned with the z direction) is equal to \hbar m-l where m-l is the magnetic quantum number of the electron's state.
; What is the magnitude of the magnetic potential energy U for an electron with magnetic quantum number m_l in a magnetic field of strength B?

; U=-mu_zB
; mu_z = -e/2mL_z
; L_z=hbar m_l
; so:
; mu_z=-e\hbar/2m * m_l
; U=2\hbar/2m * m_l B

(displayln (qstr #\E "2 hbar/2m * m_l B"))

; Part F

; An electron in a hydrogen atom is in a state with magnetic quantum number m_l = 2.
; How much does the energy of this state change when a magnetic field of magnitude 1.5 tesla is turned on?
; Use elem charge, hbar, electron mass
; Express your answer in eV

(displayln (qnn #\F
                (J->eV (let ([e elem-charge]
                             [h hbar]
                             [m M-electron]
                             [m-l 2]
                             [B 1.5])
                         (* (/ (* e h) (* 2 m))
                            m-l
                            B)))
                "eV"))

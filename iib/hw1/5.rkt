#lang racket

; The law of reflection is quite useful for mirrors and other flat shiny surfaces
; This sort of reflection is called specular reflection

; However, you've likely been told that when you look at something, you are looking at the light reflected from the object you are looking at
; This is reflection of a different sort
; diffuse reflection
; In this problem you will see how diffuse reflection actually arises from the same law of reflection that you are accustomed to for reflections from mirrors

; Part A

; Consider a spotlight shining onto a horizontal mirror.
; If the light from the spotlight strikes the mirror at an angle theta_a to the normal
; What angle theta_r to the normal would you expect for the reflect rays?

; due to the law of reflection theta_a

(displayln "a) θ_a")

; This simple rule of reflection no longer seems to hold for diffuse reflection.
; Consider the same spotlight but now reflecting from the surface of a table (Figure 2)
; Unlike the light reflected from the mirror, the light reflected from the table seems to go in all directions.
; If it didn't then you'd only be able to see tables when you were at a specific angle to the lights above you!
; To understand why the light reflects in all directions, you must first look at a slightly simpler problem

; Consider a flat surface, inclined downward from the horizontal by an angle alpha (figure 3)
; The red line represents the surface and the red dotted line the normal to this surface (the normal line)
; The two blue dashed lines represent horizontal and vertical
; The angle between the incoming ray and the vertical is theta_a
; Throughout this problem, assume that theta_a is larger than alpha but smaller than 2alpha
; If you wish, you can determine the correct sign rules to generalize your results later

; Part B

; Find the angle theta_r between the reflected ray and the vertical

; Im doing ts by hand

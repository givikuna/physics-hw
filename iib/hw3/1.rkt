#lang racket

; You are listening to the FM radio in your car.
; As you come to a stop at a traffic light, you notice that the radio signal is fuzzy.
; By pulling up a short distance, you can make the reception clear again.
; In this problem, we work through a simple model of what is happening.

; Our model is that the radio waves are taking two paths to your radio antenna:
;   The direct route from the transmitter
;   An indirect route via reflection off a building

; Because the two paths have different lengths, they can constructively or destructively interfere.
; Assume that the transmitter is very far away, and that the building is at a 45-degree angle from the path to transmitter (Fig 1)

; Point A in the figure is where you originally stopped, and point B is where the station is completely clear again.
; Finally, assume that the signal is at its worst at point A, and at its clearest at point B.

; Part A
; What is the distance d between points A and B?
; Express your answer in wavelengths


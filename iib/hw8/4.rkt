#lang racket

(require data/gvector)

(require "../lib/formatting.rkt")
(require "../lib/phy.rkt")

(define electron-state-table (hash 'A (mk-electron-state 3 1 -1 0)
                                   'B (mk-electron-state 3 1 0 -1/2)
                                   'C (mk-electron-state 3 0 1 -1/2)
                                   'D (mk-electron-state 2 2 0 1/2)
                                   'E (mk-electron-state 2 -1 0 -1/2)
                                   'F (mk-electron-state 2 0 0 1/2)))

; Part A

; Which, if any, of these states are not possible?
; Select the letters of the states that are not possible

(define (filter-electron-states tbl)
  (define arr (make-gvector))
  (hash-for-each tbl
                 (lambda (electron-state-id electron-state)
                   (unless (check-electron-state electron-state)
                     (gvector-add! arr (symbol->string electron-state-id)))))
  (gvector->list arr))

(displayln (qstr #\A (string-join (filter-electron-states electron-state-table) ", ")))

; Part B

; Determine the spectroscopic notation for state B

(displayln (qstr #\B (spectroscopic-notation (hash-ref electron-state-table 'B))))

; Part C

; Determine the spectroscopic notation for state F

(displayln (qstr #\C (spectroscopic-notation (hash-ref electron-state-table 'F))))

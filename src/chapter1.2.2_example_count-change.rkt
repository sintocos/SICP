#lang racket
(define (denomination kind-of-coins)
  (cond ((= kind-of-coins 1) 1)
        ((= kind-of-coins 2) 5)
        ((= kind-of-coins 3) 10)
        ((= kind-of-coins 4) 50)
        ((= kind-of-coins 5) 100)))

(define (count-actua amount kind-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kind-of-coins 0)) 0)
        (else (+ (count-actua amount
                              (- kind-of-coins 1))
                 (count-actua (- amount
                                 (denomination kind-of-coins))
                              kind-of-coins)))))

(define (count-change amount)
  (count-actua amount 5))

(count-change 550)
#lang racket
(define (function-f number)
  (cond ((< number 3) number)
        (else (+ (function-f (- number 1))
                 (* (function-f (- number 2)) 2)
                 (* (function-f (- number 3)) 3)))))


(define (function-g number)
  (func-g-iter number 2 2 1 0))

(define (func-g-iter n count a b c)
  (cond ((< n 3) n)
        ((= n count) a)
        (else
         (func-g-iter n (+ count 1) (+ a (* 2 b) (* 3 c)) a b))))
(function-f 10)
(function-g 10)



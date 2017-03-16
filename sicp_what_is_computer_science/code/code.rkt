#lang racket
;
(define (square x) (* x x))
(square 10)

(define (sum-of-squares x y) (+ (square x) (square y)))
(sum-of-squares 10 10)

;; cond — когда нуно обработать множество условий:
(define (abs-with-cond x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

;; То же самое через if. if позволяет работать с одним исходом (когда условие выполняется) и одной альтернативой:
(define (abs-with-if x)
  (if (< x 0)
      (- x)
      x))

(abs-with-if -3)

;; Больше или равно:
(define (>= x y) ;; мы можем задавать процедуре любое имя. В данном случае вместо `equal-or-more` мы написали `>=`.
  (or (> x y) (= x y)))
;; Вариант:
;(define (>= x y)
;  (not (< x y)))

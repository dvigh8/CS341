#lang racket
(define my-sum
  (lambda (n)
    (if (<= n 0)
        0
        (+ n (my-sum ( - n 1 ))))))

(define my-square-sum
  (lambda (n)
    (if (<= n 0)
        0
        (+ (sqr n) (my-square-sum ( - n 1 ))))))

(define my-better-sum
  (lambda (func n)
    (if ( <= n 0)
        0
        (+ (func n) (my-better-sum func ( - n 1))))))

(define my-generic-sum
  (lambda (func)
      (lambda (n)
        (if(<= n 0)
           (func 0)
           ( + (func n) ( call func (- n 1)))))))
(define call
  (lambda (func n)
    (if(<= n 0)
           (func 0)
           ( + (func n) (call func (- n 1))))))
(define test-me
  (lambda (func n)
    (if (< n 0)
        '()
        (cons (func n) (test-me func (- n 1))))))

(define test-me-again
  (lambda (func foo n)
    (if (< n 0)
        '()
        (cons (func foo n) (test-me-again func foo (- n 1))))))
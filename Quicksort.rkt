#lang racket
(define quicksort
  (lambda (ls less?)
    (cons ((null? ls) '())
          (else
           (let* ((pivot (select-at-random ls))
                  (ls-without-pivot (remove pivot ls))
                  (left-ls (filter (lambda (x) (less? x pivot)) ls-without-pivot))
                  (right-ls (filter(lambda (x) (not (less? x pivot)))ls-without-pivot)))
             (append (quicksort left-ls less?)
                     (list pivot)
                     (quicksort right-ls less?)))))))
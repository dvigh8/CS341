#lang racket
(require graphics/graphics)
(open-graphics)
(define view (open-viewport "Harry's Random Walk" 1500 800))
((draw-viewport view ) "black")
(define pick-color
  (lambda ()
    (letrec ((helper
              (lambda (rand)
                (cond [(= rand 0) "white"]
                      [(= rand 1) "red"]
                      [(= rand 2) "blue"]
                      [(= rand 3) "green"]))))
      (helper (random 4)))))

(define n
  (lambda ()
    (define next
      (lambda (first second rand)
        (if (and (= first 1500)(= second 800))
            (display "Harry is home!")
            (cond [(= rand 0)((draw-pixel view) (make-posn first second) (pick-color))
                             (if (> first 0)
                                 (next (- first 1) second (random 4))
                                 (next (+ first 1) second (random 4)))]
                  [(= rand 1)((draw-pixel view) (make-posn first second) (pick-color))
                             (if (> second 0)
                                 (next first (- second 1)(random 4))
                                 (next first (+ second 1)(random 4)))]
                  [(= rand 2)((draw-pixel view) (make-posn first second) (pick-color))
                             (if (< first 1500)
                                 (next (+ first 1) second(random 4))
                                 (next (- first 1) second(random 4)))]
                  [(= rand 3)((draw-pixel view) (make-posn first second) (pick-color))
                             (if (< second 800)
                                 (next first (+ second 1)(random 4))
                                 (next first (- second 1)(random 4)))]))))
    (next 0 0 (random 4))))

(n)

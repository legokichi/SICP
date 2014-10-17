
(define (cbrt x)
  (define (cbrt-iter guess old x)
    (print (list guess old x))
    (if (good-enough? guess old)
      guess
      (cbrt-iter (improve guess x) guess x)))
  (define (improve guess x)
    (newton-law x guess))
  (define (average x y)
    (/ (+ x y) 2))
  (define (good-enough? guess old)
    (< (abs (- guess old)) 0.00000001))
  (define (newton-law x y)
    (/ (+ (/ x (square y)) (* 2 y)) 3))
  (cbrt-iter 1.0 0.0 x))


(print (cbrt 27))

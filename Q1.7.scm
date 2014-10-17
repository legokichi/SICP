(define (sqrt-iter guess old x)
  (if (good-enough? guess old)
    guess
    (sqrt-iter (improve guess x) guess x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough? guess old)
  (< (abs (- guess old)) 0.0000001))
(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

(print (sqrt 9))

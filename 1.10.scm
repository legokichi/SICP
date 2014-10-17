(define (A x y)
(cond ((= y 0) 0)
      ((= x 0) (* 2 y))
      ((= y 1) 2)
    (else (A (- x 1)
             (A x (- y 1))))))
(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))


(print (A 1 10))
(print (A 2 4))
(print (A 3 3))

(map
  (lambda (n)
    (print (list n (f n) (* n 2))))
  (iota 10 1))
(map
  (lambda (n)
  (print (list n (g n) (expt 2 n))))
  (iota 10 1))


(define (my-fn n)
  (if (<= n 1)
      (expt 2 1)
      (expt 2 (my-fn (- n 1)))))

(map
  (lambda (n)
  (print (= (h n) (my-fn n))))
  (iota 5 1))

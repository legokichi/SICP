(define (f n)
  (cond ((<  n 3) n)
        ((>= n 3) (+       (f (- n 1))
                      (* 2 (f (- n 2)))
                      (* 3 (f (- n 3)))))))

(define (f2 n)
  (f-iter 4 2 1 (- n 1)))

(define (f-iter a b c n)
  (if (= n 0)
      c
      (f-iter (+ a (* 2 b) (* 3 c)) a  b (- n 1))))

(map
  (lambda (n)
    (print (list n (f n) (f2 n))))
  (iota 20 1))

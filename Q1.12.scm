;; liner iterate process??
(define (pascals-triangle n)
  (define (getline lst)
    (define (sum lst rst)
      (if
        (equal? (cdr lst) '())
        rst
        (sum
          (cdr lst)
          (cons (+ (car lst) (car (cdr lst))) rst)
        )
      )
    )
    (cons 1 (sum lst '(1)))
  )
  (define (iter lst n)
    (if (= n 0)
      lst
      (iter (getline lst) (- n 1))
    )
  )
  (cond
    ((= n 1) '(1))
    ((= n 2) '(1 1))
    ((> n 2) (iter '(1 1) n))
  )
)
(print (pascals-triangle 10))

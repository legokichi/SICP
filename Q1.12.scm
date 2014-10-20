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
    (sum (append (cons 0 lst) (cons 0 '())) '())
  )
  (define (iter lst n)
    (if (= n 0)
      lst
      (iter (getline lst) (- n 1))
    )
  )
  (iter '(1) n)
)
(for-each (lambda (n)
  (print (pascals-triangle (- n 1)))
) (iota 10 1))

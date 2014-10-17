(define (inc a)
  (+ a 1))
(define (dec a)
  (- a 1))

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
#|
(+ 4 5)
>>(if (= 4 0)
      5
      (inc (+ (dec 4) 5)))
>>>>(= 4 0)
>>>>#f
>>(if #f
      5
      (inc (+ (dec 4) 5)))
>>(inc (+ (dec 4) 5))
>>>>(dec 4)
>>>>3
>>(inc (+ 3 5))
>>>>(+ 3 5)
>>>>8
>>(inc 8)
>>9
9
|#

(print (+ 4 5))

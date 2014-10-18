(define (inc a)
  (+ a 1))
(define (dec a)
  (- a 1))

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))
(print (+ 4 5))
#|
(+ 4 5)
>>(+ 4 5)
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
>>>>(if (= 3 0)
        0
        (inc (+ (dec 3) 0)))
>>>>>>(= 3 0)
>>>>>>#f
>>>>(if #f
        0
        (inc (+ (dec 3) 0)))
>>>>(inc (+ (dec 3) 0))
>>>>>>(dec 3)
>>>>>>2
>>>>(inc (+ 2 0))
>>>>>>(+ 2 0)
>>>>>>(if (= 2 0)
          0
          (inc (+ (dec 2) 0)))
...
>>>>8
>>(inc 8)
>>9
9
;it looks like "liner recursive process".
|#


(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
(print (+ 4 5))
#|
(+ 4 5)
>>(+ 4 5)
>>(if (= 4 0)
      5
      (+ (dec 4) (inc 5)))
>>>>(= 4 0)
>>>>#f
>>(if #f
      5
      (+ (dec 4) (inc 5)))
>>(+ (dec 4) (inc 5)))
>>>>(dec 4)
>>>>3
>>>>(inc 5)
>>>>6
>>(+ 3 6)
>>(if (= 3 6)
      3
    (+ (dec 3) (inc 6)))
...
>>(+ 3 6)
>>9
9
;it looks like "liner interative process".
|#

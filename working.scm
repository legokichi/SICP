(use slib)
(require 'trace)
;(trace A)

(count-change 11)
>>(count-change 11)
>>(cc 11 5)
>>(cond ((= 11 0) 1)
        ((or (< 11 0) (= 5 0)) 0)
        ((else (+
                  (cc 11 (- 5 1))
                  (cc (- 11 (first-denomination 5 )) 5)))))
>>(+
    (cc 11 (- 5 1))
    (cc (- 11 (first-denomination 5)) 5))
>>>>(first-denomination 5)
>>>>(cond ((= 5 1) 1)
          ((= 5 2) 5)
          ((= 5 3) 10)
          ((= 5 4) 25)
          ((= 5 5) 50))
>>>>50
>>(+
    (cc 11 (- 5 1))
    (cc (- 11 50) 5))
>>>>(cc 11 (- 5 1))
>>>>>>(- 5 1)
>>>>>>4
>>>>(cc 11 4)

>>>>(cc (- 11 50) 5)
>>>>>>(- 11 50)
>>>>>>39
>>>>(cc 39 5)

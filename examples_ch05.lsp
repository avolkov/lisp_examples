(defun do-length (lst)
    (do 
        ((i lst (cdr i))
        (sum 0 (1+ sum)))
        ((atom i) sum)
        ;(print i)
    )
)
(print (do-length '(a)))
(print (do-length '(1 2)))
(print(do-length '(a b c d e)))
(print (do-length '()))
;line 3 - set up index variable i, first it's a copy of lst that then 
;is  assinged (cdr i)
;line 4 - sum, initialization statement on the left , loop increment on the right
;line 5 - exit condition on the left, return value on the right
;the rest of the statements in under do function just execute
;that is useful for debugging

(defun do-rev (lst)
    (do 
        ((x lst (cdr x))(res nil (cons (car x) res)))
        ((null x) res)
    )
)
(print (do-rev '()))
(print (do-rev '(a)))
(print (do-rev '(a b c)))

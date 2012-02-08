(defun car-atomp (x)
;conditionals
    (cond ((listp x) (atom (car x))))
)
(defun cond-ex1 (x)
; multi-clause conditionals
    (cond 
        ((numberp x)(+ x 7))
        ((listp x)(cons 'a x))
    )
)
(defun cond-ex2 (x)
;multi-clause conditional, setting external variable
    (cond 
        ((listp x)(setq flag 'list)(cons 'a x))
        ((numberp x)(setq flag 'number)(+ 7 x))
    )
)
(defun cond-ex3 (x)
; cond with catch all clause at the end
    (cond
        ((listp x)(setq flag 'list)(cons 'a x))
        ((numberp x)(setq flag 'number)(+ 7 x))
        (t (setq flag 'neither) nil)
    )
)
(defun our-adjoin (e l)
;reimplementing adjoin
    (cond
        ((member e l) l)
        (t (cons e l))
    )
)
(defun our-adjoin1 (e l)
;reimplementing adjoin using if function
    (if (member e l) l (cons e l))
)
;when -- and if statement that lacks then or else
;(when t 3)
;unless -- negative of when
; lisp case statement is like switch in C; also contains otherwise clause
(defun even-50-100 (x)
; nested conditionals
    (cond ((numberp x) 
        (cond ((evenp x) 
            (cond ((> x 49) (< x 101)))
        ))
    ))
)

(defun even-50-100a (x)
;using and/or
    (and (numberp x)(evenp x)(> x 49)(< x 101))
)
(setq x '(a b))
(setq y '(c d))

(print (cons (car x) (cons (car (cdr x)) y)))
(print (cons (car x) (cons (cadr x) y)))

(setq a '(a b c))
(print (cons (car a) (cons (cadr a) (cons (caddr a)  a))))
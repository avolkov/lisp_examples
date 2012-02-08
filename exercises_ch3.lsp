(defun radius(r) (* pi (* r r)))
(defun interest (x) (* x (/ 0.1 12)))
(defun square (x) (* x x))
(defun eu-distance (p1 p2)
;Eucleadian distance calculator
    (sqrt (-
        (square (- (car p1) (car p2)))
        (square (- (cadr p1) (cadr p2)))
        )
    )
)
;predicates
(defun head (x) (car x))
(defun tail (x) (cdr x))
(defun switch (x) 
    (list (cadr x) (car x))
)

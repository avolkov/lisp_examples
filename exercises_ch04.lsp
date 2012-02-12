(defun oddgdm (x)
;determine if x is an odd number greater than a million
    (and (numberp x)(oddp x)(> x 1000000))
)
(defun multiple-member (farg sarg)
;first argument occurs at least twice in second
	(and 
		(not (null sarg))
		(or 
			(and (equal farg (car sarg)) (not (null (member farg (cdr sarg)))))
			(multiple-member farg (cdr sarg))
		)
	)
)
(defun avgnums(farg sarg)
;check that both arguments are numbers and find average
	(cond ((and (numberp farg)(numberp sarg))(/ (+ farg sarg) 2)))
)

(defun find-tolerance (fnum snum)
;Two numbers a sufficiently close withing free variable *tolerance*
	(< (abs (- fnum snum)) tolerance)
)
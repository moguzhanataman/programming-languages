;
; Solutions for http://www.shido.info/lisp/scheme5_e.html page
;

; Exercise 1

; 1. A function to return the absolute value of a real number.
(define (absval number)
	(if (< number 0)
		(- 0 number)
		number))

; 2. A function to return the reciprocal of a real number. Make it return #f if the argument is 0.8
(define (reciprocal number)
	(if (= number 0)
		#f
		(- 0 number)))

; 3. A function to convert a integer to a graphical character of ASCII characters.
;    The integers that can be converted to graphical characters are 33 – 126.
;    Use integer->char to convert a integer to a character.
;    Make it return #f if the given integer can not be converted to a graphical character.

(define (int-to-char int)
	(if (< int 33)
		#f
		(if (> int 126)
			#f
			(integer->char int))))

; Exercise 3

; 1. The grade (A – D) of exam is determined by the score (score). Write a function that takes a score as an argument and returns a grade.
; 		1. A if score ≥ 80
; 		2. B if 60 ≤ score ≤ 79
; 		3. C if 40 ≤ score ≤ 59
; 		4. D if score < 40

(define (score->grade score)
	(cond
		((>= score 80) #\A)
		((and (>= score 60) (<= score 79)) #\B)
		((and (>= score 40) (<= score 59)) #\C)
		((< score 40) #\D)))
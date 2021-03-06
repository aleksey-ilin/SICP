(define (square x) (* x x))

(define (abs x) (if (< x 0) (- x) x))

(define (average a b)
    (/ (+ a b) 2))  
  
(define (improve guess x)
    (average guess (/ x guess)))
  
(define (good-enough? guess x)
  
    (< (abs (/ (- (improve guess x) guess) guess))  0.001))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 0.0001)
(sqrt 16)

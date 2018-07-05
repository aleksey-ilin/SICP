(define (bin num row)
  (cond ((or (= num 1) (= num row) (= row 1) (= row 2)) 1)
        (else (+ (bin (- num 1) (- row 1)) (bin num (- row 1))))
        ))

(bin 4 10) 

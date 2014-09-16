(define *max-doors* 100)
 
(define (show-doors doors)
  (let door ((i 0)
             (l (vector-length doors)))
    (cond ((= i l) 
           (newline))
          (else 
           (display (list "Door" (+ i 1) "is" (if (vector-ref doors i) "open" "closed")))
           (newline)
           (door (+ i 1) l)))))
 
(define (flip-doors doors)
  (define (flip-all i)
    (cond ((> i *max-doors*) doors)
          (else 
           (let flip ((idx (- i 1)))
             (cond ((>= idx *max-doors*) 
                    (flip-all (+ i 1))) 
                   (else 
                    (vector-set! doors idx (not (vector-ref doors idx)))
                    (flip (+ idx i))))))))
  (flip-all 1))
 
(show-doors (flip-doors (make-vector *max-doors* #f)))

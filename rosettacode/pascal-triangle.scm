(define (next-row row)
  (map + (cons 0 row) (append row '(0))))
 
(define (triangle row rows)
  (if (= rows 0)
      '()
      (cons row (triangle (next-row row) (- rows 1)))))
 
(for-each (lambda (row) (display row) (newline))
          (triangle (list 1) 10))

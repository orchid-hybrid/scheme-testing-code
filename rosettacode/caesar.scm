(define msg "The quick brown fox jumps over the lazy dog.")
(define key 13)
 
(define (caesar char)
  (define a* (char->integer #\A))
  (define z* (char->integer #\Z))
  (define a (char->integer #\a))
  (define z (char->integer #\z))
  (define c (char->integer char))
  (integer->char
    (cond ((<= a* c z*) (+ a* (modulo (+ key (- c a*)) 26)))
          ((<= a c z) (+ a (modulo (+ key (- c a)) 26)))
          (else c)))) ; Return other characters verbatim.
 
(display (list->string (map caesar (string->list msg))))
(newline)

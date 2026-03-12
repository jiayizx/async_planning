(define (problem make-orange-problem) (:domain make-orange-domain)
  (:init
    (s1_pending) (s2_pending) (s3_pending) (s4_pending) (s5_pending)
  )
  (:goal (and (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)))
)

(define (problem nailpolish-problem)
  (:domain nailpolish)
  (:init
    (s1_pending) (s2_pending) (s3_pending) (s4_pending)
  )
  (:goal (and (s1_done) (s2_done) (s3_done) (s4_done)))
)

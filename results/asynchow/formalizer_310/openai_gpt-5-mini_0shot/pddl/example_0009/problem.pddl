(define (problem vacation-problem)
  (:domain vacation)
  (:init
    (s1_pending) (s2_pending) (s3_pending) (s4_pending) (s5_pending) (s6_pending)
  )
  (:goal (and
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done)
  ))
)

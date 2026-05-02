(define (problem sleepover-problem)
  (:domain sleepover-domain)
  (:init
    (s1_pending) (s2_pending) (s3_pending) (s4_pending) (s5_pending) (s6_pending) (s7_pending)
  )
  (:goal (and
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done)
  ))
)

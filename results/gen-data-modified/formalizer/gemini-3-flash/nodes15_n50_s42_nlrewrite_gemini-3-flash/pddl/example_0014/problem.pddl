(define (problem cure_hoarse_voice)
  (:domain hoarse_voice_recovery)
  (:init
    (s1_pending) (s2_pending) (s3_pending) (s4_pending) (s5_pending)
    (s6_pending) (s7_pending) (s8_pending) (s9_pending) (s10_pending)
    (s11_pending) (s12_pending) (s13_pending) (s14_pending) (s15_pending)
  )
  (:goal (and
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
  ))
)
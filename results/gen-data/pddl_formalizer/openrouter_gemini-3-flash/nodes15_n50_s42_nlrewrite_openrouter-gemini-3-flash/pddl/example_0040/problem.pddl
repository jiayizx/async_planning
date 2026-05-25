(define (problem pico_de_gallo_prob)
  (:domain pico_de_gallo_prep)
  (:objects
    s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 - step
  )
  (:init
    (step_pending s1) (step_pending s2) (step_pending s3) (step_pending s4) (step_pending s5)
    (step_pending s6) (step_pending s7) (step_pending s8) (step_pending s9) (step_pending s10)
    (step_pending s11) (step_pending s12) (step_pending s13) (step_pending s14) (step_pending s15)
  )
  (:goal
    (and
      (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
      (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
      (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
    )
  )
)
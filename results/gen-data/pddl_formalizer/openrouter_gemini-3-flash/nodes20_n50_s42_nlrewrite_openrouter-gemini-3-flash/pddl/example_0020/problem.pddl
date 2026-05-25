(define (problem braid_problem)
  (:domain braid_making)
  (:objects
    st1 st2 st3 st4 st5 st6 st7 st8 st9 st10
    st11 st12 st13 st14 st15 st16 st17 st18 st19 st20 - step
  )
  (:init
    (step_pending st1) (step_pending st2) (step_pending st3) (step_pending st4) (step_pending st5)
    (step_pending st6) (step_pending st7) (step_pending st8) (step_pending st9) (step_pending st10)
    (step_pending st11) (step_pending st12) (step_pending st13) (step_pending st14) (step_pending st15)
    (step_pending st16) (step_pending st17) (step_pending st18) (step_pending st19) (step_pending st20)
  )
  (:goal (and
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
    (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
  ))
  (:metric minimize (total-time))
)
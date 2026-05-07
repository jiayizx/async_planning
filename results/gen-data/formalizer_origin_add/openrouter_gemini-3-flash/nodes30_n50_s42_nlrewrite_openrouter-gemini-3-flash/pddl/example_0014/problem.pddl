(define (problem melt_bark)
  (:domain almond_bark_melting)
  (:objects
    s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
    s11 s12 s13 s14 s15 s16 s17 s18 s19 s20
    s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 - step
  )
  (:init
    (step_pending s1) (step_pending s2) (step_pending s3) (step_pending s4) (step_pending s5)
    (step_pending s6) (step_pending s7) (step_pending s8) (step_pending s9) (step_pending s10)
    (step_pending s11) (step_pending s12) (step_pending s13) (step_pending s14) (step_pending s15)
    (step_pending s16) (step_pending s17) (step_pending s18) (step_pending s19) (step_pending s20)
    (step_pending s21) (step_pending s22) (step_pending s23) (step_pending s24) (step_pending s25)
    (step_pending s26) (step_pending s27) (step_pending s28) (step_pending s29) (step_pending s30)
  )
  (:goal
    (and
      (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
      (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
      (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
      (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
      (s21_done) (s22_done) (s23_done) (s24_done) (s25_done)
      (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    )
  )
)
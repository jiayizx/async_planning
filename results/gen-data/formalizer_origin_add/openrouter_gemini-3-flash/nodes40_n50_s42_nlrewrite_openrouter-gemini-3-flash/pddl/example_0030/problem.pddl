(define (problem fried_parsley_problem)
  (:domain fried_parsley_domain)
  (:objects
    s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
    s11 s12 s13 s14 s15 s16 s17 s18 s19 s20
    s21 s22 s23 s24 s25 s26 s27 s28 s29 s30
    s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 - step
  )
  (:init
    (step_pending s1) (step_pending s2) (step_pending s3) (step_pending s4) (step_pending s5)
    (step_pending s6) (step_pending s7) (step_pending s8) (step_pending s9) (step_pending s10)
    (step_pending s11) (step_pending s12) (step_pending s13) (step_pending s14) (step_pending s15)
    (step_pending s16) (step_pending s17) (step_pending s18) (step_pending s19) (step_pending s20)
    (step_pending s21) (step_pending s22) (step_pending s23) (step_pending s24) (step_pending s25)
    (step_pending s26) (step_pending s27) (step_pending s28) (step_pending s29) (step_pending s30)
    (step_pending s31) (step_pending s32) (step_pending s33) (step_pending s34) (step_pending s35)
    (step_pending s36) (step_pending s37) (step_pending s38) (step_pending s39) (step_pending s40)
  )
  (:goal (and
    (step_done s1) (step_done s2) (step_done s3) (step_done s4) (step_done s5)
    (step_done s6) (step_done s7) (step_done s8) (step_done s9) (step_done s10)
    (step_done s11) (step_done s12) (step_done s13) (step_done s14) (step_done s15)
    (step_done s16) (step_done s17) (step_done s18) (step_done s19) (step_done s20)
    (step_done s21) (step_done s22) (step_done s23) (step_done s24) (step_done s25)
    (step_done s26) (step_done s27) (step_done s28) (step_done s29) (step_done s30)
    (step_done s31) (step_done s32) (step_done s33) (step_done s34) (step_done s35)
    (step_done s36) (step_done s37) (step_done s38) (step_done s39) (step_done s40)
    (p4_done) (p6_done) (p7_done) (p8_done) (p12_done) (p14_done) (p17_done) (p18_done) (p20_done) (p24_done) (p27_done) (p31_done) (p37_done) (p38_done)
  ))
  (:metric minimize (total-time))
)
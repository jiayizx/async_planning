(define (problem treat-panic-attacks-problem)
  (:domain treat-panic-attacks)
  (:objects
    s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
    s11 s12 s13 s14 s15 s16 s17 s18 s19 s20
    s21 s22 s23 s24 s25 s26 s27 s28 s29 s30
    s31 s32 s33 s34 s35 s36 s37 s38 s39 s40
    s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 - step
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
    (step_pending s41) (step_pending s42) (step_pending s43) (step_pending s44) (step_pending s45)
    (step_pending s46) (step_pending s47) (step_pending s48) (step_pending s49) (step_pending s50)
  )
  (:goal (and (forall (?s - step) (step_done ?s)) (step_complete s50)))
)
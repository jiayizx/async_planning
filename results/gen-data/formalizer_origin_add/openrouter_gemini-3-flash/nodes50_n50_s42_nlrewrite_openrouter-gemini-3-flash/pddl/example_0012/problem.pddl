(define (problem treat_panic_attacks)
  (:domain panic_attack_treatment)
  (:objects
    st1 st2 st3 st4 st5 st6 st7 st8 st9 st10
    st11 st12 st13 st14 st15 st16 st17 st18 st19 st20
    st21 st22 st23 st24 st25 st26 st27 st28 st29 st30
    st31 st32 st33 st34 st35 st36 st37 st38 st39 st40
    st41 st42 st43 st44 st45 st46 st47 st48 st49 st50 - step
  )
  (:init
    (step_pending st1) (step_pending st2) (step_pending st3) (step_pending st4) (step_pending st5)
    (step_pending st6) (step_pending st7) (step_pending st8) (step_pending st9) (step_pending st10)
    (step_pending st11) (step_pending st12) (step_pending st13) (step_pending st14) (step_pending st15)
    (step_pending st16) (step_pending st17) (step_pending st18) (step_pending st19) (step_pending st20)
    (step_pending st21) (step_pending st22) (step_pending st23) (step_pending st24) (step_pending st25)
    (step_pending st26) (step_pending st27) (step_pending st28) (step_pending st29) (step_pending st30)
    (step_pending st31) (step_pending st32) (step_pending st33) (step_pending st34) (step_pending st35)
    (step_pending st36) (step_pending st37) (step_pending st38) (step_pending st39) (step_pending st40)
    (step_pending st41) (step_pending st42) (step_pending st43) (step_pending st44) (step_pending st45)
    (step_pending st46) (step_pending st47) (step_pending st48) (step_pending st49) (step_pending st50)
  )
  (:goal (and
    (step_done st1) (step_done st2) (step_done st3) (step_done st4) (step_done st5)
    (step_done st6) (step_done st7) (step_done st8) (step_done st9) (step_done st10)
    (step_done st11) (step_done st12) (step_done st13) (step_done st14) (step_done st15)
    (step_done st16) (step_done st17) (step_done st18) (step_done st19) (step_done st20)
    (step_done st21) (step_done st22) (step_done st23) (step_done st24) (step_done st25)
    (step_done st26) (step_done st27) (step_done st28) (step_done st29) (step_done st30)
    (step_done st31) (step_done st32) (step_done st33) (step_done st34) (step_done st35)
    (step_done st36) (step_done st37) (step_done st38) (step_done st39) (step_done st40)
    (step_done st41) (step_done st42) (step_done st43) (step_done st44) (step_done st45)
    (step_done st46) (step_done st47) (step_done st48) (step_done st49) (step_done st50)
    (s7_done) (s5_done) (s9_done) (s10_done) (s15_done) (s18_done) (s19_done) (s20_done) (s22_done) (s29_done) (s36_done) (s38_done) (s40_done) (s45_done) (s48_done)
  ))
)
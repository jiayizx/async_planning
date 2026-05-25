(define (problem maintain_budget)
  (:domain budget_management)
  (:objects
    s1 - step s2 - step s3 - step s4 - step s5 - step s6 - step s7 - step s8 - step s9 - step s10 - step
    s11 - step s12 - step s13 - step s14 - step s15 - step s16 - step s17 - step s18 - step s19 - step s20 - step
    s21 - step s22 - step s23 - step s24 - step s25 - step s26 - step s27 - step s28 - step s29 - step s30 - step
    s31 - step s32 - step s33 - step s34 - step s35 - step s36 - step s37 - step s38 - step s39 - step s40 - step
    s41 - step s42 - step s43 - step s44 - step s45 - step s46 - step s47 - step s48 - step s49 - step s50 - step
    s51 - step s52 - step s53 - step s54 - step s55 - step s56 - step s57 - step s58 - step s59 - step s60 - step
    s61 - step s62 - step s63 - step s64 - step s65 - step s66 - step s67 - step s68 - step s69 - step s70 - step
    s71 - step s72 - step s73 - step s74 - step s75 - step s76 - step s77 - step s78 - step s79 - step s80 - step
    s81 - step s82 - step s83 - step s84 - step s85 - step s86 - step s87 - step s88 - step s89 - step s90 - step
    s91 - step s92 - step s93 - step s94 - step s95 - step s96 - step s97 - step s98 - step s99 - step s100 - step
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
    (step_pending s51) (step_pending s52) (step_pending s53) (step_pending s54) (step_pending s55)
    (step_pending s56) (step_pending s57) (step_pending s58) (step_pending s59) (step_pending s60)
    (step_pending s61) (step_pending s62) (step_pending s63) (step_pending s64) (step_pending s65)
    (step_pending s66) (step_pending s67) (step_pending s68) (step_pending s69) (step_pending s70)
    (step_pending s71) (step_pending s72) (step_pending s73) (step_pending s74) (step_pending s75)
    (step_pending s76) (step_pending s77) (step_pending s78) (step_pending s79) (step_pending s80)
    (step_pending s81) (step_pending s82) (step_pending s83) (step_pending s84) (step_pending s85)
    (step_pending s86) (step_pending s87) (step_pending s88) (step_pending s89) (step_pending s90)
    (step_pending s91) (step_pending s92) (step_pending s93) (step_pending s94) (step_pending s95)
    (step_pending s96) (step_pending s97) (step_pending s98) (step_pending s99) (step_pending s100)
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
    (step_done s41) (step_done s42) (step_done s43) (step_done s44) (step_done s45)
    (step_done s46) (step_done s47) (step_done s48) (step_done s49) (step_done s50)
    (step_done s51) (step_done s52) (step_done s53) (step_done s54) (step_done s55)
    (step_done s56) (step_done s57) (step_done s58) (step_done s59) (step_done s60)
    (step_done s61) (step_done s62) (step_done s63) (step_done s64) (step_done s65)
    (step_done s66) (step_done s67) (step_done s68) (step_done s69) (step_done s70)
    (step_done s71) (step_done s72) (step_done s73) (step_done s74) (step_done s75)
    (step_done s76) (step_done s77) (step_done s78) (step_done s79) (step_done s80)
    (step_done s81) (step_done s82) (step_done s83) (step_done s84) (step_done s85)
    (step_done s86) (step_done s87) (step_done s88) (step_done s89) (step_done s90)
    (step_done s91) (step_done s92) (step_done s93) (step_done s94) (step_done s95)
    (step_done s96) (step_done s97) (step_done s98) (step_done s99) (step_done s100)
    (s100_done)
  ))
)
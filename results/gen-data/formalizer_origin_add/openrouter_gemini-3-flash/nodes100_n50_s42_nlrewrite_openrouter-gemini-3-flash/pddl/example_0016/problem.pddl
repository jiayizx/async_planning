(define (problem atomic_mass_problem)
  (:domain atomic_mass_calculation)
  (:objects
    st1 - step st2 - step st3 - step st4 - step st5 - step st6 - step st7 - step st8 - step st9 - step st10 - step
    st11 - step st12 - step st13 - step st14 - step st15 - step st16 - step st17 - step st18 - step st19 - step st20 - step
    st21 - step st22 - step st23 - step st24 - step st25 - step st26 - step st27 - step st28 - step st29 - step st30 - step
    st31 - step st32 - step st33 - step st34 - step st35 - step st36 - step st37 - step st38 - step st39 - step st40 - step
    st41 - step st42 - step st43 - step st44 - step st45 - step st46 - step st47 - step st48 - step st49 - step st50 - step
    st51 - step st52 - step st53 - step st54 - step st55 - step st56 - step st57 - step st58 - step st59 - step st60 - step
    st61 - step st62 - step st63 - step st64 - step st65 - step st66 - step st67 - step st68 - step st69 - step st70 - step
    st71 - step st72 - step st73 - step st74 - step st75 - step st76 - step st77 - step st78 - step st79 - step st80 - step
    st81 - step st82 - step st83 - step st84 - step st85 - step st86 - step st87 - step st88 - step st89 - step st90 - step
    st91 - step st92 - step st93 - step st94 - step st95 - step st96 - step st97 - step st98 - step st99 - step st100 - step
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
    (step_pending st51) (step_pending st52) (step_pending st53) (step_pending st54) (step_pending st55)
    (step_pending st56) (step_pending st57) (step_pending st58) (step_pending st59) (step_pending st60)
    (step_pending st61) (step_pending st62) (step_pending st63) (step_pending st64) (step_pending st65)
    (step_pending st66) (step_pending st67) (step_pending st68) (step_pending st69) (step_pending st70)
    (step_pending st71) (step_pending st72) (step_pending st73) (step_pending st74) (step_pending st75)
    (step_pending st76) (step_pending st77) (step_pending st78) (step_pending st79) (step_pending st80)
    (step_pending st81) (step_pending st82) (step_pending st83) (step_pending st84) (step_pending st85)
    (step_pending st86) (step_pending st87) (step_pending st88) (step_pending st89) (step_pending st90)
    (step_pending st91) (step_pending st92) (step_pending st93) (step_pending st94) (step_pending st95)
    (step_pending st96) (step_pending st97) (step_pending st98) (step_pending st99) (step_pending st100)
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
    (step_done st51) (step_done st52) (step_done st53) (step_done st54) (step_done st55)
    (step_done st56) (step_done st57) (step_done st58) (step_done st59) (step_done st60)
    (step_done st61) (step_done st62) (step_done st63) (step_done st64) (step_done st65)
    (step_done st66) (step_done st67) (step_done st68) (step_done st69) (step_done st70)
    (step_done st71) (step_done st72) (step_done st73) (step_done st74) (step_done st75)
    (step_done st76) (step_done st77) (step_done st78) (step_done st79) (step_done st80)
    (step_done st81) (step_done st82) (step_done st83) (step_done st84) (step_done st85)
    (step_done st86) (step_done st87) (step_done st88) (step_done st89) (step_done st90)
    (step_done st91) (step_done st92) (step_done st93) (step_done st94) (step_done st95)
    (step_done st96) (step_done st97) (step_done st98) (step_done st99) (step_done st100)
    (s20_done) (s84_done) (s97_done)
  ))
)
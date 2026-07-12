(define (problem adopt-a-pet)
  (:domain pet-adoption)
  (:objects
    st1 - step1 st2 - step2 st3 - step3 st4 - step4 st5 - step5
    st6 - step6 st7 - step7 st8 - step8 st9 - step9 st10 - step10
    st11 - step11 st12 - step12 st13 - step13 st14 - step14 st15 - step15
    st16 - step16 st17 - step17 st18 - step18 st19 - step19 st20 - step20
    st21 - step21 st22 - step22 st23 - step23 st24 - step24 st25 - step25
    st26 - step26 st27 - step27 st28 - step28 st29 - step29 st30 - step30)
  (:init
    (step_pending st1) (step_pending st2) (step_pending st3) (step_pending st4)
    (step_pending st5) (step_pending st6) (step_pending st7) (step_pending st8)
    (step_pending st9) (step_pending st10) (step_pending st11) (step_pending st12)
    (step_pending st13) (step_pending st14) (step_pending st15) (step_pending st16)
    (step_pending st17) (step_pending st18) (step_pending st19) (step_pending st20)
    (step_pending st21) (step_pending st22) (step_pending st23) (step_pending st24)
    (step_pending st25) (step_pending st26) (step_pending st27) (step_pending st28)
    (step_pending st29) (step_pending st30))
  (:goal (and
    (step_done st1) (step_done st2) (step_done st3) (step_done st4)
    (step_done st5) (step_done st6) (step_done st7) (step_done st8)
    (step_done st9) (step_done st10) (step_done st11) (step_done st12)
    (step_done st13) (step_done st14) (step_done st15) (step_done st16)
    (step_done st17) (step_done st18) (step_done st19) (step_done st20)
    (step_done st21) (step_done st22) (step_done st23) (step_done st24)
    (step_done st25) (step_done st26) (step_done st27) (step_done st28)
    (step_done st29) (step_done st30) (adoption_announced)))
  (:metric minimize (total-time))
)
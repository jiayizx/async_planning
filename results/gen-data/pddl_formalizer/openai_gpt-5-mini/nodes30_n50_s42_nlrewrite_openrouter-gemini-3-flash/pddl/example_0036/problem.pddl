(define (problem clean-combat-boots-prob)
  (:domain clean-combat-boots)

  (:init
    ;; initialize all pending predicates to true (all steps pending)
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
    (step6_pending) (step7_pending) (step8_pending) (step9_pending) (step10_pending)
    (step11_pending) (step12_pending) (step13_pending) (step14_pending) (step15_pending)
    (step16_pending) (step17_pending) (step18_pending) (step19_pending) (step20_pending)
    (step21_pending) (step22_pending) (step23_pending) (step24_pending) (step25_pending)
    (step26_pending) (step27_pending) (step28_pending) (step29_pending) (step30_pending)
  )

  (:goal (and
    ;; require all steps done
    (step_done1) (step_done2) (step_done3) (step_done4) (step_done5)
    (step_done6) (step_done7) (step_done8) (step_done9) (step_done10)
    (step_done11) (step_done12) (step_done13) (step_done14) (step_done15)
    (step_done16) (step_done17) (step_done18) (step_done19) (step_done20)
    (step_done21) (step_done22) (step_done23) (step_done24) (step_done25)
    (step_done26) (step_done27) (step_done28) (step_done29) (step_done30)
    ;; final semantic predicate to enforce full causal chain (step 15's semantic predicate)
    (finished_s15)
  ))
)

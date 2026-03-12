(define (problem do_off_balance_exercise)
  (:domain off_balance_exercise)

  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
  )

  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
  ))
)

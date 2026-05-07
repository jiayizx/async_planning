(define (problem make_freezer_sweet_cherry_pie_filling-problem)
  (:domain make_freezer_sweet_cherry_pie_filling)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    ;; All steps start as pending
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
  )
  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (pie_ready)
  ))
)

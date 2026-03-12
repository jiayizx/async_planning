(define (problem make_lavender_tea_problem)
  (:domain make_lavender_tea)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  (:goal (and (step1_done) (step2_done) (step3_done)))
)

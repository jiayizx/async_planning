(define (problem stop_coworker_putting_down_problem)
  (:domain stop_coworker_putting_down)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
  ))
)

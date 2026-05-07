(define (problem roast_macadamia_nuts_prob)
  (:domain roast_macadamia_nuts)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (nuts_shelled)
    )
  )
)
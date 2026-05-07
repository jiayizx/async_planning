(define (problem weed_killing_problem)
  (:domain kill_weeds_with_vinegar)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (vinegar_bought)
    (soap_added)
    (salt_added)
  ))
)
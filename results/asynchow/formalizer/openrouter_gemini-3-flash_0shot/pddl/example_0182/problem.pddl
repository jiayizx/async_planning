(define (problem prepare_pasta_problem)
  (:domain angel_hair_pasta)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (pasta_cooked)
    (pasta_with_oil_done)
    (pasta_with_sauce_done)
    (pasta_salad_done)
  ))
)
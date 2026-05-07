(define (problem drink-from-sippy-cup)
  (:domain sippy-cup)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init)
  (:goal (and (step_done step1)
              (step_done step2)
              (step_done step3)
              (step_done step4)
              (step_done step5)
              (drink_taken)))
)
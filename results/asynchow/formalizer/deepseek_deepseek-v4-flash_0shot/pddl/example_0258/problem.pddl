(define (problem make_felt_animals_problem)
  (:domain make_felt_animals)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and (step_done step1) (step_done step2) (step_done step3) (step1_done) (step2_done) (step3_done)))
)
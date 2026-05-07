(define (problem lose_fat_problem)
  (:domain lose_upper_body_fat)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (chinups_done)
      (dumbbell_row_done)
      (delt_raise_done)
      (exercises_chosen)
    )
  )
)
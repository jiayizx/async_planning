(define (problem lower_androgen_problem)
  (:domain lower_androgen_levels)
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
      (tested)
      (birth_control_discussed)
      (hypoglycemic_med_obtained)
      (anti_androgen_discussed)
    )
  )
  (:metric minimize (total-time))
)
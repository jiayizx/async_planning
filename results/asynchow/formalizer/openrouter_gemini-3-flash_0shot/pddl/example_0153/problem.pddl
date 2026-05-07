(define (problem move_in_problem)
  (:domain move_in_process)
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
    (future_discussed)
    (space_respected)
    (finances_discussed)
  ))
)
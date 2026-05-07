(define (problem get_boyfriend_to_move_in_problem)
  (:domain get_boyfriend_to_move_in)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and (step_done step1) (step_done step2) (step_done step3) (discuss_finances_done)))
)

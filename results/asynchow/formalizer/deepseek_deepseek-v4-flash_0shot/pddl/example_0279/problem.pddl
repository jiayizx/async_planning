(define (problem off_balance_problem)
  (:domain off_balance)
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
    (trainer_work_done)
    (bosu_ball_done)
    (split_stance_done)
    (wobble_board_done)
  ))
)
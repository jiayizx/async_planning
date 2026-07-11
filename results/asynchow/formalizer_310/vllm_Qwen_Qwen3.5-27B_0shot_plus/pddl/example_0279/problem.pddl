(define (problem off_balance_exercise_problem)
  (:domain off_balance_exercise)
  
  (:init
    (work_with_trainer_pending)
    (use_bosu_stability_ball_pending)
    (incorporate_split_stance_pending)
    (try_balance_wobble_board_pending)
  )

  (:goal (and
    (work_with_trainer_done)
    (use_bosu_stability_ball_done)
    (incorporate_split_stance_done)
    (try_balance_wobble_board_done)
  ))
)
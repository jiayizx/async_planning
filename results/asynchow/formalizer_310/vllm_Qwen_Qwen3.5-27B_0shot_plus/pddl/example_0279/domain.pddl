(define (domain off_balance_exercise)
  (:requirements :durative-actions)
  
  (:predicates
    (work_with_trainer_pending)
    (work_with_trainer_done)
    (use_bosu_stability_ball_pending)
    (use_bosu_stability_ball_done)
    (incorporate_split_stance_pending)
    (incorporate_split_stance_done)
    (try_balance_wobble_board_pending)
    (try_balance_wobble_board_done)
  )

  (:durative-action work_with_trainer
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (work_with_trainer_pending)))
    :effect (and (at start (not (work_with_trainer_pending)))
                 (at end (work_with_trainer_done)))
  )

  (:durative-action use_bosu_stability_ball
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (use_bosu_stability_ball_pending))
                    (at start (work_with_trainer_done)))
    :effect (and (at start (not (use_bosu_stability_ball_pending)))
                 (at end (use_bosu_stability_ball_done)))
  )

  (:durative-action incorporate_split_stance
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (incorporate_split_stance_pending))
                    (at start (work_with_trainer_done)))
    :effect (and (at start (not (incorporate_split_stance_pending)))
                 (at end (incorporate_split_stance_done)))
  )

  (:durative-action try_balance_wobble_board
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (try_balance_wobble_board_pending))
                    (at start (work_with_trainer_done)))
    :effect (and (at start (not (try_balance_wobble_board_pending)))
                 (at end (try_balance_wobble_board_done)))
  )
)
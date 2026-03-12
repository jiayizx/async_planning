(define (domain off_balance_exercise)
  (:requirements :durative-actions)
  (:predicates
    (work_with_trainer_pending)
    (work_with_trainer_done)
    (use_bosu_and_stability_ball_pending)
    (use_bosu_and_stability_ball_done)
    (incorporate_split_and_one_leg_pending)
    (incorporate_split_and_one_leg_done)
    (try_balance_or_wobble_board_pending)
    (try_balance_or_wobble_board_done)
  )

  (:durative-action do_work_with_trainer
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (work_with_trainer_pending))
    :effect (and (at start (not (work_with_trainer_pending)))
                 (at end (work_with_trainer_done)))
  )

  (:durative-action do_use_bosu_and_stability_ball
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (use_bosu_and_stability_ball_pending))
                    (at start (work_with_trainer_done)))
    :effect (and (at start (not (use_bosu_and_stability_ball_pending)))
                 (at end (use_bosu_and_stability_ball_done)))
  )

  (:durative-action do_incorporate_split_and_one_leg
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (incorporate_split_and_one_leg_pending))
                    (at start (work_with_trainer_done)))
    :effect (and (at start (not (incorporate_split_and_one_leg_pending)))
                 (at end (incorporate_split_and_one_leg_done)))
  )

  (:durative-action do_try_balance_or_wobble_board
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (try_balance_or_wobble_board_pending))
                    (at start (work_with_trainer_done)))
    :effect (and (at start (not (try_balance_or_wobble_board_pending)))
                 (at end (try_balance_or_wobble_board_done)))
  )
)

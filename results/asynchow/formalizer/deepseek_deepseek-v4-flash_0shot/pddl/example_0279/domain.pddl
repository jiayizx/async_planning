(define (domain off_balance)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (trainer_work_done)
    (bosu_ball_done)
    (split_stance_done)
    (wobble_board_done)
  )
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (trainer_work_done))
    )
  )
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step2))
      (at start (trainer_work_done))
    )
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (bosu_ball_done))
    )
  )
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending step3))
      (at start (trainer_work_done))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (split_stance_done))
    )
  )
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step4))
      (at start (trainer_work_done))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (wobble_board_done))
    )
  )
)
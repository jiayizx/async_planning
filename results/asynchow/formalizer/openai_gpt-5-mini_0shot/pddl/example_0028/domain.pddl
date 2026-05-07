(define (domain play_game)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (buy_game_done)
    (buy_console_done)
    (hook_done)
    (insert_done)
    (press_done)
  )

  (:durative-action do_step1_buy_game
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (buy_game_done))
    )
  )

  (:durative-action do_step2_buy_console
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (buy_console_done))
    )
  )

  (:durative-action do_step3_hook_console
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (buy_game_done)) (at start (buy_console_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (hook_done))
    )
  )

  (:durative-action do_step4_insert_game
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (hook_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (insert_done))
    )
  )

  (:durative-action do_step5_press_play
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (insert_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (press_done))
    )
  )
)

(define (domain pass_time_art)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gather_done)
    (caddy_done)
    (drum_done)
    (bowling_done)
  )

  (:durative-action do_step1_gather_materials
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (gather_done))
            )
  )

  (:durative-action do_step2_make_caddy
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step2)) (at start (gather_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (caddy_done))
            )
  )

  (:durative-action do_step3_make_drum_kit
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step3)) (at start (gather_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (drum_done))
            )
  )

  (:durative-action do_step4_make_bowling_game
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step4)) (at start (gather_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (bowling_done))
            )
  )
)

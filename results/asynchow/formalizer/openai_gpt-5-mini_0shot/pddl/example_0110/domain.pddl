(define (domain play_baseball)
  (:requirements :typing :durative-actions)
  (:types step)

  (:constants step1 step2 step3 step4 step5 step6 - step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (dress_done)
    (call_done)
    (arrange_done)
    (drive_done)
    (exit_done)
    (walk_done)
  )

  (:durative-action do_step1_dress
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (dress_done))
    )
  )

  (:durative-action do_step2_call_friends
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (call_done))
    )
  )

  (:durative-action do_step3_arrange_time
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step3)) (at start (call_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (arrange_done))
    )
  )

  (:durative-action do_step4_drive_to_venue
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (dress_done)) (at start (arrange_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (drive_done))
    )
  )

  (:durative-action do_step5_exit_car
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step5)) (at start (drive_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (exit_done))
    )
  )

  (:durative-action do_step6_walk_to_field
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step6)) (at start (exit_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (walk_done))
    )
  )
)

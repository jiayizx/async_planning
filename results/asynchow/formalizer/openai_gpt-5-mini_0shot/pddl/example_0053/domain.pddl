(define (domain feel_more_in_touch)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (take_week_done)
    (drive_done)
    (hike_done)
    (live_off_done)
    (stay_off_electronics_done)
  )

  ;; Step 1: Take a week off work
  (:durative-action do_step1_take_week_off
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (take_week_done))
    )
  )

  ;; Step 2: Drive on up to a local national park (requires step1)
  (:durative-action do_step2_drive_to_park
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step2)) (at start (take_week_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (drive_done))
    )
  )

  ;; Step 3: Hike out into nature with camping supplies (requires step2)
  (:durative-action do_step3_hike_out
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step3)) (at start (drive_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (hike_done))
    )
  )

  ;; Step 4: Live off the land (requires step3)
  (:durative-action do_step4_live_off_land
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step4)) (at start (hike_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (live_off_done))
    )
  )

  ;; Step 5: Stay away from electronic devices (requires step3)
  (:durative-action do_step5_stay_away_electronics
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step5)) (at start (hike_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (stay_off_electronics_done))
    )
  )
)

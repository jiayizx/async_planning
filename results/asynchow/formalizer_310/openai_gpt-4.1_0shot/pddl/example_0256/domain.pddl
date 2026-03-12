(define (domain lose_upper_body_fat)
  (:requirements :durative-actions)
  (:predicates
    (do_chin_ups_pending)
    (do_chin_ups_done)
    (try_dumbbell_row_pending)
    (try_dumbbell_row_done)
    (perform_bent_over_rear_delt_raise_pending)
    (perform_bent_over_rear_delt_raise_done)
    (choose_exercises_pending)
    (choose_exercises_done)
  )

  (:durative-action do_chin_ups
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (do_chin_ups_pending)) (at start (choose_exercises_done)))
    :effect (and (at start (not (do_chin_ups_pending))) (at end (do_chin_ups_done)))
  )

  (:durative-action try_dumbbell_row
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (try_dumbbell_row_pending)) (at start (choose_exercises_done)))
    :effect (and (at start (not (try_dumbbell_row_pending))) (at end (try_dumbbell_row_done)))
  )

  (:durative-action perform_bent_over_rear_delt_raise
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (perform_bent_over_rear_delt_raise_pending)) (at start (choose_exercises_done)))
    :effect (and (at start (not (perform_bent_over_rear_delt_raise_pending))) (at end (perform_bent_over_rear_delt_raise_done)))
  )

  (:durative-action choose_exercises
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (choose_exercises_pending))
    :effect (and (at start (not (choose_exercises_pending))) (at end (choose_exercises_done)))
  )
)

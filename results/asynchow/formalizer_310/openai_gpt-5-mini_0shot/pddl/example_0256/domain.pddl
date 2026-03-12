(define (domain lose_upper_body_fat_domain)
  (:requirements :durative-actions)
  (:predicates
    (chinups_pending)
    (chinups_done)
    (dumbbell_row_pending)
    (dumbbell_row_done)
    (rear_delt_pending)
    (rear_delt_done)
    (choose_exercises_pending)
    (choose_exercises_done)
  )

  (:durative-action do_chin_ups
    :parameters ()
    :duration (= ?duration 600) ; 10 minutes = 600 seconds
    :condition (and (at start (chinups_pending)) (at start (choose_exercises_done)))
    :effect (and (at start (not (chinups_pending))) (at end (chinups_done)))
  )

  (:durative-action do_dumbbell_row
    :parameters ()
    :duration (= ?duration 900) ; 15 minutes = 900 seconds
    :condition (and (at start (dumbbell_row_pending)) (at start (choose_exercises_done)))
    :effect (and (at start (not (dumbbell_row_pending))) (at end (dumbbell_row_done)))
  )

  (:durative-action do_rear_delt_raise
    :parameters ()
    :duration (= ?duration 600) ; 10 minutes = 600 seconds
    :condition (and (at start (rear_delt_pending)) (at start (choose_exercises_done)))
    :effect (and (at start (not (rear_delt_pending))) (at end (rear_delt_done)))
  )

  (:durative-action choose_exercises
    :parameters ()
    :duration (= ?duration 1200) ; 20 minutes = 1200 seconds
    :condition (at start (choose_exercises_pending))
    :effect (and (at start (not (choose_exercises_pending))) (at end (choose_exercises_done)))
  )
)

(define (domain race_preparation)
  (:requirements :durative-actions)
  
  (:predicates
    (sign_up_pending)
    (sign_up_done)
    (practice_running_pending)
    (practice_running_done)
    (eat_well_pending)
    (eat_well_done)
    (rest_before_race_pending)
    (rest_before_race_done)
    (arrive_at_race_pending)
    (arrive_at_race_done)
  )

  (:durative-action sign_up
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (sign_up_pending)))
    :effect (and (at start (not (sign_up_pending))) (at end (sign_up_done)))
  )

  (:durative-action practice_running
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (practice_running_pending)) (at start (sign_up_done)))
    :effect (and (at start (not (practice_running_pending))) (at end (practice_running_done)))
  )

  (:durative-action eat_well
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (eat_well_pending)) (at start (sign_up_done)))
    :effect (and (at start (not (eat_well_pending))) (at end (eat_well_done)))
  )

  (:durative-action rest_before_race
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (rest_before_race_pending)) (at start (practice_running_done)) (at start (eat_well_done)))
    :effect (and (at start (not (rest_before_race_pending))) (at end (rest_before_race_done)))
  )

  (:durative-action arrive_at_race
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (arrive_at_race_pending)) (at start (rest_before_race_done)))
    :effect (and (at start (not (arrive_at_race_pending))) (at end (arrive_at_race_done)))
  )
)
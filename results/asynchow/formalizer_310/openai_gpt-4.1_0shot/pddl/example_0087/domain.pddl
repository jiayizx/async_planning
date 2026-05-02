(define (domain race-prep)
  (:requirements :durative-actions)
  (:predicates
    (sign_up_pending)
    (sign_up_done)
    (practice_pending)
    (practice_done)
    (eat_well_pending)
    (eat_well_done)
    (rest_pending)
    (rest_done)
    (arrive_pending)
    (arrive_done)
  )

  (:durative-action do_sign_up
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (sign_up_pending))
    :effect (and (at start (not (sign_up_pending))) (at end (sign_up_done)))
  )

  (:durative-action do_practice
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (practice_pending)) (at start (sign_up_done)))
    :effect (and (at start (not (practice_pending))) (at end (practice_done)))
  )

  (:durative-action do_eat_well
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (eat_well_pending)) (at start (sign_up_done)))
    :effect (and (at start (not (eat_well_pending))) (at end (eat_well_done)))
  )

  (:durative-action do_rest
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (rest_pending)) (at start (practice_done)) (at start (eat_well_done)))
    :effect (and (at start (not (rest_pending))) (at end (rest_done)))
  )

  (:durative-action do_arrive
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (arrive_pending)) (at start (rest_done)))
    :effect (and (at start (not (arrive_pending))) (at end (arrive_done)))
  )
)

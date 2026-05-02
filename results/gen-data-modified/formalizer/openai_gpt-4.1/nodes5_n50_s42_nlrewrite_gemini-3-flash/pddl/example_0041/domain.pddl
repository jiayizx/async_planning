(define (domain sippy-cup)
  (:requirements :durative-actions)
  (:predicates
    (retrieve_cup_pending)
    (retrieve_cup_done)
    (screw_lid_pending)
    (screw_lid_done)
    (fill_cup_pending)
    (fill_cup_done)
    (sip_pending)
    (sip_done)
    (sit_pending)
    (sit_done)
  )

  (:durative-action retrieve_cup
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (retrieve_cup_pending))
    :effect (and (at start (not (retrieve_cup_pending))) (at end (retrieve_cup_done)))
  )

  (:durative-action screw_lid
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (screw_lid_pending)) (at start (fill_cup_done)))
    :effect (and (at start (not (screw_lid_pending))) (at end (screw_lid_done)))
  )

  (:durative-action fill_cup
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (fill_cup_pending)) (at start (retrieve_cup_done)))
    :effect (and (at start (not (fill_cup_pending))) (at end (fill_cup_done)))
  )

  (:durative-action sip
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (sip_pending)) (at start (screw_lid_done)) (at start (sit_done)))
    :effect (and (at start (not (sip_pending))) (at end (sip_done)))
  )

  (:durative-action sit
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (sit_pending))
    :effect (and (at start (not (sit_pending))) (at end (sit_done)))
  )
)

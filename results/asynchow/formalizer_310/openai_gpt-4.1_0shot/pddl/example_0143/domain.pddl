(define (domain clean_silk_tie)
  (:requirements :durative-actions)
  (:predicates
    (spray_on_fabric_protector_pending)
    (spray_on_fabric_protector_done)
    (hand_wash_tie_pending)
    (hand_wash_tie_done)
    (tuck_tie_away_pending)
    (tuck_tie_away_done)
  )

  (:durative-action spray_on_fabric_protector
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (spray_on_fabric_protector_pending)) (at start (hand_wash_tie_done)))
    :effect (and (at start (not (spray_on_fabric_protector_pending))) (at end (spray_on_fabric_protector_done)))
  )

  (:durative-action hand_wash_tie
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (hand_wash_tie_pending))
    :effect (and (at start (not (hand_wash_tie_pending))) (at end (hand_wash_tie_done)))
  )

  (:durative-action tuck_tie_away
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (tuck_tie_away_pending))
    :effect (and (at start (not (tuck_tie_away_pending))) (at end (tuck_tie_away_done)))
  )
)

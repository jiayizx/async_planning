(define (domain care_for_succulents)
  (:requirements :durative-actions)
  (:predicates
    (identify_pests_pending)
    (identify_pests_done)
    (fight_pests_pending)
    (fight_pests_done)
    (quarantine_pending)
    (quarantine_done)
  )

  (:durative-action identify_pests
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (identify_pests_pending))
    :effect (and
      (at start (not (identify_pests_pending)))
      (at end (identify_pests_done))
    )
  )

  (:durative-action fight_pests
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (fight_pests_pending)) (at start (identify_pests_done)))
    :effect (and
      (at start (not (fight_pests_pending)))
      (at end (fight_pests_done))
    )
  )

  (:durative-action quarantine_new_plants
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (quarantine_pending))
    :effect (and
      (at start (not (quarantine_pending)))
      (at end (quarantine_done))
    )
  )
)

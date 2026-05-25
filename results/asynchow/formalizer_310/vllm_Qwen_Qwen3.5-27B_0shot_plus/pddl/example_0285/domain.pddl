(define (domain succulent_care)
  (:requirements :durative-actions)
  
  (:predicates
    (identify_pests_pending)
    (identify_pests_done)
    (fight_pests_pending)
    (fight_pests_done)
    (quarantine_plants_pending)
    (quarantine_plants_done)
  )

  (:durative-action identify_pests
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (identify_pests_pending))
    :effect (and (at start (not (identify_pests_pending)))
                 (at end (identify_pests_done)))
  )

  (:durative-action fight_pests
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (fight_pests_pending))
                    (at start (identify_pests_done)))
    :effect (and (at start (not (fight_pests_pending)))
                 (at end (fight_pests_done)))
  )

  (:durative-action quarantine_plants
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (quarantine_plants_pending))
    :effect (and (at start (not (quarantine_plants_pending)))
                 (at end (quarantine_plants_done)))
  )
)

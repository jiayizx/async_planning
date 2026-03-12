(define (domain remove_pet_hair)
  (:requirements :durative-actions)
  (:predicates
    (rub_pumice_pending)
    (rub_pumice_done)
    (mist_carpet_pending)
    (mist_carpet_done)
    (vacuum_carpet_pending)
    (vacuum_carpet_done)
    (mop_hardwood_pending)
    (mop_hardwood_done)
  )

  (:durative-action rub_pumice
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (rub_pumice_pending)) (at start (mist_carpet_done)))
    :effect (and (at start (not (rub_pumice_pending))) (at end (rub_pumice_done)))
  )

  (:durative-action mist_carpet
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (mist_carpet_pending))
    :effect (and (at start (not (mist_carpet_pending))) (at end (mist_carpet_done)))
  )

  (:durative-action vacuum_carpet
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (vacuum_carpet_pending)) (at start (rub_pumice_done)))
    :effect (and (at start (not (vacuum_carpet_pending))) (at end (vacuum_carpet_done)))
  )

  (:durative-action mop_hardwood
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (mop_hardwood_pending))
    :effect (and (at start (not (mop_hardwood_pending))) (at end (mop_hardwood_done)))
  )
)

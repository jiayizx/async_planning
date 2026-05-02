(define (domain diagnose_geriatric_hamster)
  (:requirements :durative-actions)
  (:predicates
    (take_to_vet_pending)
    (take_to_vet_done)
    (watch_lethargy_pending)
    (watch_lethargy_done)
    (look_discharge_pending)
    (look_discharge_done)
  )

  (:durative-action do_take_to_vet
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (take_to_vet_pending))
      (at start (watch_lethargy_done))
      (at start (look_discharge_done))
    )
    :effect (and
      (at start (not (take_to_vet_pending)))
      (at end (take_to_vet_done))
    )
  )

  (:durative-action do_watch_lethargy
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (watch_lethargy_pending))
    :effect (and
      (at start (not (watch_lethargy_pending)))
      (at end (watch_lethargy_done))
    )
  )

  (:durative-action do_look_discharge
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (look_discharge_pending))
    :effect (and
      (at start (not (look_discharge_pending)))
      (at end (look_discharge_done))
    )
  )
)

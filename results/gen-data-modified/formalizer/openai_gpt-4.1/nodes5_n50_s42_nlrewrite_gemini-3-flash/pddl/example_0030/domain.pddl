(define (domain canoe_building)
  (:requirements :durative-actions)
  (:predicates
    (apply_sealant_pending)
    (apply_sealant_done)
    (harvest_log_pending)
    (harvest_log_done)
    (hollow_log_pending)
    (hollow_log_done)
    (carve_bow_stern_pending)
    (carve_bow_stern_done)
    (install_seats_pending)
    (install_seats_done)
  )

  (:durative-action apply_sealant
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (apply_sealant_pending)) (at start (hollow_log_done)))
    :effect (and (at start (not (apply_sealant_pending))) (at end (apply_sealant_done)))
  )

  (:durative-action harvest_log
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (harvest_log_pending))
    :effect (and (at start (not (harvest_log_pending))) (at end (harvest_log_done)))
  )

  (:durative-action hollow_log
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (hollow_log_pending)) (at start (harvest_log_done)))
    :effect (and (at start (not (hollow_log_pending))) (at end (hollow_log_done)))
  )

  (:durative-action carve_bow_stern
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (carve_bow_stern_pending)) (at start (hollow_log_done)))
    :effect (and (at start (not (carve_bow_stern_pending))) (at end (carve_bow_stern_done)))
  )

  (:durative-action install_seats
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (install_seats_pending)) (at start (hollow_log_done)))
    :effect (and (at start (not (install_seats_pending))) (at end (install_seats_done)))
  )
)

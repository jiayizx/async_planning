(define (domain make-canoe)
  (:requirements :durative-actions)
  (:predicates
    (apply_seal_pending)
    (apply_seal_done)
    (select_harvest_pending)
    (select_harvest_done)
    (hollow_out_pending)
    (hollow_out_done)
    (carve_bow_stern_pending)
    (carve_bow_stern_done)
    (install_seats_pending)
    (install_seats_done)
  )

  (:durative-action apply_seal
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (apply_seal_pending)) (at start (hollow_out_done)))
    :effect (and (at start (not (apply_seal_pending))) (at end (apply_seal_done)))
  )

  (:durative-action select_harvest
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (select_harvest_pending))
    :effect (and (at start (not (select_harvest_pending))) (at end (select_harvest_done)))
  )

  (:durative-action hollow_out
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (hollow_out_pending)) (at start (select_harvest_done)))
    :effect (and (at start (not (hollow_out_pending))) (at end (hollow_out_done)))
  )

  (:durative-action carve_bow_stern
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (carve_bow_stern_pending)) (at start (hollow_out_done)))
    :effect (and (at start (not (carve_bow_stern_pending))) (at end (carve_bow_stern_done)))
  )

  (:durative-action install_seats
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (install_seats_pending)) (at start (hollow_out_done)))
    :effect (and (at start (not (install_seats_pending))) (at end (install_seats_done)))
  )
)

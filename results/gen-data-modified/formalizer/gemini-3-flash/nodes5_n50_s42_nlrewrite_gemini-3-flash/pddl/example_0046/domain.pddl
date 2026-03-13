(define (domain may_day_celebration)
  (:requirements :durative-actions)
  (:predicates
    (dance_maypole_pending)
    (dance_maypole_done)
    (gather_ribbons_pending)
    (gather_ribbons_done)
    (prepare_feast_pending)
    (prepare_feast_done)
    (host_picnic_pending)
    (host_picnic_done)
    (purchase_produce_pending)
    (purchase_produce_done)
  )

  (:durative-action dance_maypole
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (dance_maypole_pending)) (at start (gather_ribbons_done)))
    :effect (and (at start (not (dance_maypole_pending))) (at end (dance_maypole_done)))
  )

  (:durative-action gather_ribbons
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (gather_ribbons_pending))
    :effect (and (at start (not (gather_ribbons_pending))) (at end (gather_ribbons_done)))
  )

  (:durative-action prepare_feast
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (prepare_feast_pending)) (at start (purchase_produce_done)))
    :effect (and (at start (not (prepare_feast_pending))) (at end (prepare_feast_done)))
  )

  (:durative-action host_picnic
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (host_picnic_pending)) (at start (prepare_feast_done)))
    :effect (and (at start (not (host_picnic_pending))) (at end (host_picnic_done)))
  )

  (:durative-action purchase_produce
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (purchase_produce_pending))
    :effect (and (at start (not (purchase_produce_pending))) (at end (purchase_produce_done)))
  )
)
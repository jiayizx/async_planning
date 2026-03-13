(define (domain mayday_celebration)
  (:requirements :durative-actions)
  (:predicates
    (dance_around_maypole_pending)
    (dance_around_maypole_done)
    (gather_ribbons_and_crowns_pending)
    (gather_ribbons_and_crowns_done)
    (prepare_community_feast_pending)
    (prepare_community_feast_done)
    (host_neighborhood_picnic_pending)
    (host_neighborhood_picnic_done)
    (purchase_fresh_produce_pending)
    (purchase_fresh_produce_done)
  )

  (:durative-action dance_around_maypole
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (dance_around_maypole_pending)) (at start (gather_ribbons_and_crowns_done)))
    :effect (and (at start (not (dance_around_maypole_pending))) (at end (dance_around_maypole_done)))
  )

  (:durative-action gather_ribbons_and_crowns
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (gather_ribbons_and_crowns_pending))
    :effect (and (at start (not (gather_ribbons_and_crowns_pending))) (at end (gather_ribbons_and_crowns_done)))
  )

  (:durative-action prepare_community_feast
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (prepare_community_feast_pending)) (at start (purchase_fresh_produce_done)))
    :effect (and (at start (not (prepare_community_feast_pending))) (at end (prepare_community_feast_done)))
  )

  (:durative-action host_neighborhood_picnic
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (host_neighborhood_picnic_pending)) (at start (prepare_community_feast_done)))
    :effect (and (at start (not (host_neighborhood_picnic_pending))) (at end (host_neighborhood_picnic_done)))
  )

  (:durative-action purchase_fresh_produce
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (purchase_fresh_produce_pending))
    :effect (and (at start (not (purchase_fresh_produce_pending))) (at end (purchase_fresh_produce_done)))
  )
)

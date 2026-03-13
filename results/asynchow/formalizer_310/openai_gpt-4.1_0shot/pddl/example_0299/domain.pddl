(define (domain flavor_cigars)
  (:requirements :durative-actions)
  (:predicates
    (choose_flavor_pending)
    (choose_flavor_done)
    (select_cigar_pending)
    (select_cigar_done)
    (prepare_pads_pending)
    (prepare_pads_done)
    (soak_pads_pending)
    (soak_pads_done)
    (stash_cigar_pending)
    (stash_cigar_done)
    (place_baggie_pending)
    (place_baggie_done)
    (enjoy_cigar_pending)
    (enjoy_cigar_done)
  )

  (:durative-action choose_flavor
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (choose_flavor_pending))
    :effect (and (at start (not (choose_flavor_pending))) (at end (choose_flavor_done)))
  )

  (:durative-action select_cigar
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (select_cigar_pending))
    :effect (and (at start (not (select_cigar_pending))) (at end (select_cigar_done)))
  )

  (:durative-action prepare_pads
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (prepare_pads_pending))
    :effect (and (at start (not (prepare_pads_pending))) (at end (prepare_pads_done)))
  )

  (:durative-action soak_pads
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (soak_pads_pending)) (at start (choose_flavor_done)) (at start (prepare_pads_done)))
    :effect (and (at start (not (soak_pads_pending))) (at end (soak_pads_done)))
  )

  (:durative-action stash_cigar
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (stash_cigar_pending)) (at start (select_cigar_done)) (at start (soak_pads_done)))
    :effect (and (at start (not (stash_cigar_pending))) (at end (stash_cigar_done)))
  )

  (:durative-action place_baggie
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (place_baggie_pending)) (at start (stash_cigar_done)))
    :effect (and (at start (not (place_baggie_pending))) (at end (place_baggie_done)))
  )

  (:durative-action enjoy_cigar
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (enjoy_cigar_pending)) (at start (place_baggie_done)))
    :effect (and (at start (not (enjoy_cigar_pending))) (at end (enjoy_cigar_done)))
  )
)

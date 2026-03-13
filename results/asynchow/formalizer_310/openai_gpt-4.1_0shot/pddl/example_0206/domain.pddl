(define (domain puff_pastry)
  (:requirements :durative-actions)
  (:predicates
    (make_puff_pastry_shells_pending)
    (make_puff_pastry_shells_done)
    (make_baked_brie_pending)
    (make_baked_brie_done)
    (make_filled_pastry_puffs_pending)
    (make_filled_pastry_puffs_done)
    (make_ham_and_cheese_pastry_pending)
    (make_ham_and_cheese_pastry_done)
    (make_herb_and_cheese_twists_pending)
    (make_herb_and_cheese_twists_done)
  )

  (:durative-action make_puff_pastry_shells
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (make_puff_pastry_shells_pending))
    :effect (and
      (at start (not (make_puff_pastry_shells_pending)))
      (at end (make_puff_pastry_shells_done))
    )
  )

  (:durative-action make_baked_brie
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (make_baked_brie_pending))
      (at start (make_puff_pastry_shells_done))
    )
    :effect (and
      (at start (not (make_baked_brie_pending)))
      (at end (make_baked_brie_done))
    )
  )

  (:durative-action make_filled_pastry_puffs
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (make_filled_pastry_puffs_pending))
      (at start (make_puff_pastry_shells_done))
    )
    :effect (and
      (at start (not (make_filled_pastry_puffs_pending)))
      (at end (make_filled_pastry_puffs_done))
    )
  )

  (:durative-action make_ham_and_cheese_pastry
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (make_ham_and_cheese_pastry_pending))
      (at start (make_puff_pastry_shells_done))
    )
    :effect (and
      (at start (not (make_ham_and_cheese_pastry_pending)))
      (at end (make_ham_and_cheese_pastry_done))
    )
  )

  (:durative-action make_herb_and_cheese_twists
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and
      (at start (make_herb_and_cheese_twists_pending))
      (at start (make_puff_pastry_shells_done))
    )
    :effect (and
      (at start (not (make_herb_and_cheese_twists_pending)))
      (at end (make_herb_and_cheese_twists_done))
    )
  )
)

(define (domain potpourri-garden)
  (:requirements :durative-actions)
  (:predicates
    (sterilize_pruning_shears_pending)
    (sterilize_pruning_shears_done)
    (strip_leaves_pending)
    (strip_leaves_done)
    (cut_blooming_flowers_pending)
    (cut_blooming_flowers_done)
    (spread_petals_pending)
    (spread_petals_done)
    (gather_flower_heads_pending)
    (gather_flower_heads_done)
  )

  (:durative-action sterilize_pruning_shears
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (sterilize_pruning_shears_pending))
    :effect (and
      (at start (not (sterilize_pruning_shears_pending)))
      (at end (sterilize_pruning_shears_done))
    )
  )

  (:durative-action strip_leaves
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (strip_leaves_pending))
      (at start (cut_blooming_flowers_done))
    )
    :effect (and
      (at start (not (strip_leaves_pending)))
      (at end (strip_leaves_done))
    )
  )

  (:durative-action cut_blooming_flowers
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (cut_blooming_flowers_pending))
    :effect (and
      (at start (not (cut_blooming_flowers_pending)))
      (at end (cut_blooming_flowers_done))
    )
  )

  (:durative-action spread_petals
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (spread_petals_pending))
      (at start (sterilize_pruning_shears_done))
      (at start (gather_flower_heads_done))
    )
    :effect (and
      (at start (not (spread_petals_pending)))
      (at end (spread_petals_done))
    )
  )

  (:durative-action gather_flower_heads
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (gather_flower_heads_pending))
      (at start (sterilize_pruning_shears_done))
    )
    :effect (and
      (at start (not (gather_flower_heads_pending)))
      (at end (gather_flower_heads_done))
    )
  )
)

(define (domain karate-basics)
  (:requirements :durative-actions)
  (:predicates
    (practice_center_pending)
    (practice_center_done)
    (high_block_pending)
    (high_block_done)
    (forward_block_pending)
    (forward_block_done)
    (cross_block_pending)
    (cross_block_done)
    (downward_circle_block_pending)
    (downward_circle_block_done)
  )

  (:durative-action practice_center
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (practice_center_pending))
    :effect (and
      (at start (not (practice_center_pending)))
      (at end (practice_center_done))
    )
  )

  (:durative-action high_block
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (high_block_pending))
      (at start (practice_center_done))
    )
    :effect (and
      (at start (not (high_block_pending)))
      (at end (high_block_done))
    )
  )

  (:durative-action forward_block
    :parameters ()
    :duration (= ?duration 240)
    :condition (and
      (at start (forward_block_pending))
      (at start (practice_center_done))
    )
    :effect (and
      (at start (not (forward_block_pending)))
      (at end (forward_block_done))
    )
  )

  (:durative-action cross_block
    :parameters ()
    :duration (= ?duration 360)
    :condition (and
      (at start (cross_block_pending))
      (at start (practice_center_done))
    )
    :effect (and
      (at start (not (cross_block_pending)))
      (at end (cross_block_done))
    )
  )

  (:durative-action downward_circle_block
    :parameters ()
    :duration (= ?duration 180)
    :condition (and
      (at start (downward_circle_block_pending))
      (at start (practice_center_done))
    )
    :effect (and
      (at start (not (downward_circle_block_pending)))
      (at end (downward_circle_block_done))
    )
  )
)

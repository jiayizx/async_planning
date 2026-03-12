(define (domain prune_cherry_tree)
  (:requirements :durative-actions)
  (:predicates
    (sterilize_sharpen_pending)
    (sterilize_sharpen_done)
    (measure_tree_pending)
    (measure_tree_done)
    (cut_top_pending)
    (cut_top_done)
  )

  (:durative-action sterilize_sharpen
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (sterilize_sharpen_pending))
    :effect (and
              (at start (not (sterilize_sharpen_pending)))
              (at end (sterilize_sharpen_done))
            )
  )

  (:durative-action measure_tree
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (measure_tree_pending))
    :effect (and
              (at start (not (measure_tree_pending)))
              (at end (measure_tree_done))
            )
  )

  (:durative-action cut_top_central_trunk
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (cut_top_pending)) (at start (sterilize_sharpen_done)) (at start (measure_tree_done)))
    :effect (and
              (at start (not (cut_top_pending)))
              (at end (cut_top_done))
            )
  )
)

(define (domain nail_polish_separation)
  (:requirements :durative-actions)
  (:predicates
    (add_thinner_pending)
    (add_thinner_done)
    (roll_bottle_pending)
    (roll_bottle_done)
    (check_results_pending)
    (check_results_done)
    (paint_shaker_pending)
    (paint_shaker_done)
  )

  (:durative-action do_add_thinner
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (add_thinner_pending))
                    (at start (roll_bottle_done))
                    (at start (paint_shaker_done)))
    :effect (and (at start (not (add_thinner_pending)))
                 (at end (add_thinner_done)))
  )

  (:durative-action do_roll_bottle
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (roll_bottle_pending))
    :effect (and (at start (not (roll_bottle_pending)))
                 (at end (roll_bottle_done)))
  )

  (:durative-action do_check_results
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (check_results_pending))
                    (at start (add_thinner_done)))
    :effect (and (at start (not (check_results_pending)))
                 (at end (check_results_done)))
  )

  (:durative-action do_paint_shaker
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (paint_shaker_pending))
    :effect (and (at start (not (paint_shaker_pending)))
                 (at end (paint_shaker_done)))
  )
)

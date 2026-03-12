(define (domain make-felt-animals)
  (:requirements :durative-actions)
  (:predicates
    (buy_felt_pending)
    (buy_felt_done)
    (download_pattern_pending)
    (download_pattern_done)
    (gather_supplies_pending)
    (gather_supplies_done)
  )

  (:durative-action buy_felt
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (buy_felt_pending)) (at start (download_pattern_done)))
    :effect (and (at start (not (buy_felt_pending))) (at end (buy_felt_done)))
  )

  (:durative-action download_pattern
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (download_pattern_pending))
    :effect (and (at start (not (download_pattern_pending))) (at end (download_pattern_done)))
  )

  (:durative-action gather_supplies
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (gather_supplies_pending))
    :effect (and (at start (not (gather_supplies_pending))) (at end (gather_supplies_done)))
  )
)

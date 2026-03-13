(define (domain fishing_anymore)
  (:requirements :durative-actions)
  (:predicates
    (renew_license_pending)
    (renew_license_done)
    (research_spots_pending)
    (research_spots_done)
    (locate_tackle_pending)
    (locate_tackle_done)
    (cast_line_pending)
    (cast_line_done)
    (buy_bait_pending)
    (buy_bait_done)
  )

  (:durative-action renew_license
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (renew_license_pending)) (at start (locate_tackle_done)))
    :effect (and (at start (not (renew_license_pending))) (at end (renew_license_done)))
  )

  (:durative-action research_spots
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (research_spots_pending)) (at start (renew_license_done)))
    :effect (and (at start (not (research_spots_pending))) (at end (research_spots_done)))
  )

  (:durative-action locate_tackle
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (locate_tackle_pending))
    :effect (and (at start (not (locate_tackle_pending))) (at end (locate_tackle_done)))
  )

  (:durative-action cast_line
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (cast_line_pending)) (at start (renew_license_done)) (at start (buy_bait_done)))
    :effect (and (at start (not (cast_line_pending))) (at end (cast_line_done)))
  )

  (:durative-action buy_bait
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (buy_bait_pending)) (at start (renew_license_done)))
    :effect (and (at start (not (buy_bait_pending))) (at end (buy_bait_done)))
  )
)

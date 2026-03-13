(define (domain sunchoke-cooking)
  (:requirements :durative-actions)
  (:predicates
    (slice_sunchokes_pending)
    (slice_sunchokes_done)
    (toss_in_oil_pending)
    (toss_in_oil_done)
    (pat_dry_pending)
    (pat_dry_done)
    (scrub_sunchokes_pending)
    (scrub_sunchokes_done)
    (arrange_on_sheet_pending)
    (arrange_on_sheet_done)
    (soak_in_lemon_pending)
    (soak_in_lemon_done)
    (buy_sunchokes_pending)
    (buy_sunchokes_done)
    (sort_sunchokes_pending)
    (sort_sunchokes_done)
    (prepare_infusion_pending)
    (prepare_infusion_done)
    (roast_pending)
    (roast_done)
  )

  (:durative-action slice_sunchokes
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (slice_sunchokes_pending)) (at start (scrub_sunchokes_done)))
    :effect (and (at start (not (slice_sunchokes_pending))) (at end (slice_sunchokes_done)))
  )

  (:durative-action toss_in_oil
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (toss_in_oil_pending)) (at start (pat_dry_done)))
    :effect (and (at start (not (toss_in_oil_pending))) (at end (toss_in_oil_done)))
  )

  (:durative-action pat_dry
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pat_dry_pending)) (at start (soak_in_lemon_done)) (at start (prepare_infusion_done)))
    :effect (and (at start (not (pat_dry_pending))) (at end (pat_dry_done)))
  )

  (:durative-action scrub_sunchokes
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (scrub_sunchokes_pending)) (at start (soak_in_lemon_done)))
    :effect (and (at start (not (scrub_sunchokes_pending))) (at end (scrub_sunchokes_done)))
  )

  (:durative-action arrange_on_sheet
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (arrange_on_sheet_pending)) (at start (slice_sunchokes_done)))
    :effect (and (at start (not (arrange_on_sheet_pending))) (at end (arrange_on_sheet_done)))
  )

  (:durative-action soak_in_lemon
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (soak_in_lemon_pending)) (at start (sort_sunchokes_done)))
    :effect (and (at start (not (soak_in_lemon_pending))) (at end (soak_in_lemon_done)))
  )

  (:durative-action buy_sunchokes
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (buy_sunchokes_pending))
    :effect (and (at start (not (buy_sunchokes_pending))) (at end (buy_sunchokes_done)))
  )

  (:durative-action sort_sunchokes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (sort_sunchokes_pending)) (at start (buy_sunchokes_done)))
    :effect (and (at start (not (sort_sunchokes_pending))) (at end (sort_sunchokes_done)))
  )

  (:durative-action prepare_infusion
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (prepare_infusion_pending))
    :effect (and (at start (not (prepare_infusion_pending))) (at end (prepare_infusion_done)))
  )

  (:durative-action roast
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (roast_pending)) (at start (toss_in_oil_done)) (at start (pat_dry_done)) (at start (arrange_on_sheet_done)))
    :effect (and (at start (not (roast_pending))) (at end (roast_done)))
  )
)

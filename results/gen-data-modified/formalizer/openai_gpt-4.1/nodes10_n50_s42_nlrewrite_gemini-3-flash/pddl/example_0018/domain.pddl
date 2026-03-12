(define (domain house_cleaning)
  (:requirements :durative-actions)
  (:predicates
    (apply_degreaser_pending)
    (apply_degreaser_done)
    (clear_clutter_pending)
    (clear_clutter_done)
    (steam_clean_pending)
    (steam_clean_done)
    (scrub_countertops_pending)
    (scrub_countertops_done)
    (gather_supplies_pending)
    (gather_supplies_done)
    (vacuum_pending)
    (vacuum_done)
    (move_furniture_pending)
    (move_furniture_done)
    (mop_floors_pending)
    (mop_floors_done)
    (dust_fans_pending)
    (dust_fans_done)
    (wipe_baseboards_pending)
    (wipe_baseboards_done)
  )

  (:durative-action apply_degreaser
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (apply_degreaser_pending)) (at start (clear_clutter_done)))
    :effect (and (at start (not (apply_degreaser_pending))) (at end (apply_degreaser_done)))
  )

  (:durative-action clear_clutter
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (clear_clutter_pending)) (at start (gather_supplies_done)))
    :effect (and (at start (not (clear_clutter_pending))) (at end (clear_clutter_done)))
  )

  (:durative-action steam_clean
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (steam_clean_pending)) (at start (move_furniture_done)))
    :effect (and (at start (not (steam_clean_pending))) (at end (steam_clean_done)))
  )

  (:durative-action scrub_countertops
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (scrub_countertops_pending)) (at start (apply_degreaser_done)))
    :effect (and (at start (not (scrub_countertops_pending))) (at end (scrub_countertops_done)))
  )

  (:durative-action gather_supplies
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (gather_supplies_pending))
    :effect (and (at start (not (gather_supplies_pending))) (at end (gather_supplies_done)))
  )

  (:durative-action vacuum
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (vacuum_pending)) (at start (wipe_baseboards_done)))
    :effect (and (at start (not (vacuum_pending))) (at end (vacuum_done)))
  )

  (:durative-action move_furniture
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (move_furniture_pending))
    :effect (and (at start (not (move_furniture_pending))) (at end (move_furniture_done)))
  )

  (:durative-action mop_floors
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (mop_floors_pending)) (at start (vacuum_done)))
    :effect (and (at start (not (mop_floors_pending))) (at end (mop_floors_done)))
  )

  (:durative-action dust_fans
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (dust_fans_pending))
    :effect (and (at start (not (dust_fans_pending))) (at end (dust_fans_done)))
  )

  (:durative-action wipe_baseboards
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (wipe_baseboards_pending)) (at start (dust_fans_done)))
    :effect (and (at start (not (wipe_baseboards_pending))) (at end (wipe_baseboards_done)))
  )
)

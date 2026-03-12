(define (domain remove_caulking)
  (:requirements :durative-actions)
  (:predicates
    (work_slowly_pending)
    (work_slowly_done)
    (start_with_putty_knife_pending)
    (start_with_putty_knife_done)
    (use_pliers_pending)
    (use_pliers_done)
    (scrape_away_pending)
    (scrape_away_done)
  )

  (:durative-action work_slowly
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (work_slowly_pending))
    :effect (and
      (at start (not (work_slowly_pending)))
      (at end (work_slowly_done))
    )
  )

  (:durative-action start_with_putty_knife
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (start_with_putty_knife_pending))
    :effect (and
      (at start (not (start_with_putty_knife_pending)))
      (at end (start_with_putty_knife_done))
    )
  )

  (:durative-action use_pliers
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (use_pliers_pending))
      (at start (scrape_away_done))
    )
    :effect (and
      (at start (not (use_pliers_pending)))
      (at end (use_pliers_done))
    )
  )

  (:durative-action scrape_away
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (scrape_away_pending))
      (at start (start_with_putty_knife_done))
    )
    :effect (and
      (at start (not (scrape_away_pending)))
      (at end (scrape_away_done))
    )
  )
)

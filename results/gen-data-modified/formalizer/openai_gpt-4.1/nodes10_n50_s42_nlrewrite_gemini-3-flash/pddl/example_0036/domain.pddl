(define (domain roast_veggies)
  (:requirements :durative-actions)
  (:predicates
    (chop_pending)
    (chop_done)
    (preheat_pending)
    (preheat_done)
    (toss_pending)
    (toss_done)
    (spread_pending)
    (spread_done)
    (harvest_pending)
    (harvest_done)
    (mince_pending)
    (mince_done)
    (scrub_pending)
    (scrub_done)
    (drizzle_pending)
    (drizzle_done)
    (season_pending)
    (season_done)
    (peel_pending)
    (peel_done)
  )

  (:durative-action chop
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (chop_pending)) (at start (scrub_done)))
    :effect (and (at start (not (chop_pending))) (at end (chop_done)))
  )

  (:durative-action preheat
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action toss
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (toss_pending)) (at start (mince_done)) (at start (peel_done)))
    :effect (and (at start (not (toss_pending))) (at end (toss_done)))
  )

  (:durative-action spread
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (spread_pending)) (at start (toss_done)) (at start (mince_done)))
    :effect (and (at start (not (spread_pending))) (at end (spread_done)))
  )

  (:durative-action harvest
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (harvest_pending))
    :effect (and (at start (not (harvest_pending))) (at end (harvest_done)))
  )

  (:durative-action mince
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (mince_pending)) (at start (harvest_done)))
    :effect (and (at start (not (mince_pending))) (at end (mince_done)))
  )

  (:durative-action scrub
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (scrub_pending)) (at start (preheat_done)))
    :effect (and (at start (not (scrub_pending))) (at end (scrub_done)))
  )

  (:durative-action drizzle
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (drizzle_pending)) (at start (chop_done)))
    :effect (and (at start (not (drizzle_pending))) (at end (drizzle_done)))
  )

  (:durative-action season
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (season_pending)) (at start (chop_done)) (at start (drizzle_done)))
    :effect (and (at start (not (season_pending))) (at end (season_done)))
  )

  (:durative-action peel
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (peel_pending))
    :effect (and (at start (not (peel_pending))) (at end (peel_done)))
  )
)

(define (domain steamed-ginger-pudding)
  (:requirements :durative-actions)
  (:predicates
    (whisk_pending)
    (whisk_done)
    (garnish_pending)
    (garnish_done)
    (steam_pending)
    (steam_done)
    (grate_pending)
    (grate_done)
    (cool_pending)
    (cool_done)
  )

  (:durative-action do_whisk
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (whisk_pending)) (at start (grate_done)))
    :effect (and (at start (not (whisk_pending))) (at end (whisk_done)))
  )

  (:durative-action do_garnish
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (garnish_pending)) (at start (cool_done)))
    :effect (and (at start (not (garnish_pending))) (at end (garnish_done)))
  )

  (:durative-action do_steam
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (steam_pending)) (at start (whisk_done)) (at start (grate_done)))
    :effect (and (at start (not (steam_pending))) (at end (steam_done)))
  )

  (:durative-action do_grate
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (grate_pending))
    :effect (and (at start (not (grate_pending))) (at end (grate_done)))
  )

  (:durative-action do_cool
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (cool_pending)) (at start (steam_done)))
    :effect (and (at start (not (cool_pending))) (at end (cool_done)))
  )
)

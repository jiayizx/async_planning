(define (domain season_tilapia)
  (:requirements :durative-actions)
  (:predicates
    (melt_pending)
    (melt_done)
    (zest_pending)
    (zest_done)
    (whisk_pending)
    (whisk_done)
    (pour_pending)
    (pour_done)
    (bake_pending)
    (bake_done)
  )

  (:durative-action do_melt_butter
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (melt_pending))
    :effect (and (at start (not (melt_pending))) (at end (melt_done)))
  )

  (:durative-action do_zest_and_juice_lemon
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (zest_pending))
    :effect (and (at start (not (zest_pending))) (at end (zest_done)))
  )

  (:durative-action do_whisk_sauce
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (whisk_pending)) (at start (melt_done)) (at start (zest_done)))
    :effect (and (at start (not (whisk_pending))) (at end (whisk_done)))
  )

  (:durative-action do_pour_sauce_over_tilapia
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pour_pending)) (at start (whisk_done)))
    :effect (and (at start (not (pour_pending))) (at end (pour_done)))
  )

  (:durative-action do_bake_fish
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (bake_pending)) (at start (pour_done)))
    :effect (and (at start (not (bake_pending))) (at end (bake_done)))
  )
)

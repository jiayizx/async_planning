(define (domain caramelized-toast)
  (:requirements :durative-actions)
  
  (:predicates
    (scoop_margarine_pending)
    (scoop_margarine_done)
    (mash_ingredients_pending)
    (mash_ingredients_done)
    (spread_mixture_pending)
    (spread_mixture_done)
    (toast_bread_pending)
    (toast_bread_done)
    (enjoy_toast_pending)
    (enjoy_toast_done)
  )

  (:durative-action scoop_margarine
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (scoop_margarine_pending))
    :effect (and (at start (not (scoop_margarine_pending)))
                 (at end (scoop_margarine_done)))
  )

  (:durative-action mash_ingredients
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (mash_ingredients_pending))
                    (at start (scoop_margarine_done)))
    :effect (and (at start (not (mash_ingredients_pending)))
                 (at end (mash_ingredients_done)))
  )

  (:durative-action spread_mixture
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (spread_mixture_pending))
                    (at start (mash_ingredients_done))
                    (at start (toast_bread_done)))
    :effect (and (at start (not (spread_mixture_pending)))
                 (at end (spread_mixture_done)))
  )

  (:durative-action toast_bread
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (toast_bread_pending))
    :effect (and (at start (not (toast_bread_pending)))
                 (at end (toast_bread_done)))
  )

  (:durative-action enjoy_toast
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (enjoy_toast_pending))
                    (at start (spread_mixture_done)))
    :effect (and (at start (not (enjoy_toast_pending)))
                 (at end (enjoy_toast_done)))
  )
)
(define (domain gluten-free-vegan-oatmeal-cookies)
  (:requirements :durative-actions)
  
  (:predicates
    (preheat_oven_pending)
    (preheat_oven_done)
    (mash_banana_pending)
    (mash_banana_done)
    (stir_sugar_pending)
    (stir_sugar_done)
    (combine_dry_pending)
    (combine_dry_done)
    (combine_wet_dry_pending)
    (combine_wet_dry_done)
    (scoop_cookies_pending)
    (scoop_cookies_done)
    (bake_cookies_pending)
    (bake_cookies_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (preheat_oven_pending))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )

  (:durative-action mash_banana
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (mash_banana_pending))
    :effect (and (at start (not (mash_banana_pending))) (at end (mash_banana_done)))
  )

  (:durative-action stir_sugar
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (stir_sugar_pending)) (at start (mash_banana_done)))
    :effect (and (at start (not (stir_sugar_pending))) (at end (stir_sugar_done)))
  )

  (:durative-action combine_dry
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (combine_dry_pending))
    :effect (and (at start (not (combine_dry_pending))) (at end (combine_dry_done)))
  )

  (:durative-action combine_wet_dry
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (combine_wet_dry_pending)) (at start (stir_sugar_done)) (at start (combine_dry_done)))
    :effect (and (at start (not (combine_wet_dry_pending))) (at end (combine_wet_dry_done)))
  )

  (:durative-action scoop_cookies
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (scoop_cookies_pending)) (at start (preheat_oven_done)) (at start (combine_wet_dry_done)))
    :effect (and (at start (not (scoop_cookies_pending))) (at end (scoop_cookies_done)))
  )

  (:durative-action bake_cookies
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (bake_cookies_pending)) (at start (scoop_cookies_done)))
    :effect (and (at start (not (bake_cookies_pending))) (at end (bake_cookies_done)))
  )
)

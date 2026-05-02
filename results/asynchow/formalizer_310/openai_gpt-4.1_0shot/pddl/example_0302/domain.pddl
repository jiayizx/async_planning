(define (domain gf_vegan_oatmeal_cookies)
  (:requirements :durative-actions)
  (:predicates
    (preheat_pending)
    (preheat_done)
    (mash_pending)
    (mash_done)
    (stir_pending)
    (stir_done)
    (combine_dry_pending)
    (combine_dry_done)
    (combine_all_pending)
    (combine_all_done)
    (scoop_pending)
    (scoop_done)
    (bake_pending)
    (bake_done)
  )

  (:durative-action preheat_oven_and_line_sheet
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action mash_banana_with_flax_and_water
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (mash_pending))
    :effect (and (at start (not (mash_pending))) (at end (mash_done)))
  )

  (:durative-action stir_in_sugar_and_vanilla
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (stir_pending)) (at start (mash_done)))
    :effect (and (at start (not (stir_pending))) (at end (stir_done)))
  )

  (:durative-action combine_dry_ingredients
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (combine_dry_pending))
    :effect (and (at start (not (combine_dry_pending))) (at end (combine_dry_done)))
  )

  (:durative-action combine_wet_and_dry_with_choc_chips
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (combine_all_pending)) (at start (stir_done)) (at start (combine_dry_done)))
    :effect (and (at start (not (combine_all_pending))) (at end (combine_all_done)))
  )

  (:durative-action scoop_cookies_onto_sheet
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (scoop_pending)) (at start (preheat_done)) (at start (combine_all_done)))
    :effect (and (at start (not (scoop_pending))) (at end (scoop_done)))
  )

  (:durative-action bake_oatmeal_raisin_cookies
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (bake_pending)) (at start (scoop_done)))
    :effect (and (at start (not (bake_pending))) (at end (bake_done)))
  )
)

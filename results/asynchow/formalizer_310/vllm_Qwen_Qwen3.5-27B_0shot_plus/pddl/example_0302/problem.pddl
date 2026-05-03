(define (problem make_gluten_free_vegan_oatmeal_cookies)
  (:domain gluten-free-vegan-oatmeal-cookies)
  
  (:init
    (preheat_oven_pending)
    (mash_banana_pending)
    (stir_sugar_pending)
    (combine_dry_pending)
    (combine_wet_dry_pending)
    (scoop_cookies_pending)
    (bake_cookies_pending)
  )

  (:goal (and
    (preheat_oven_done)
    (mash_banana_done)
    (stir_sugar_done)
    (combine_dry_done)
    (combine_wet_dry_done)
    (scoop_cookies_done)
    (bake_cookies_done)
  ))
)

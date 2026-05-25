(define (domain coconut_scrub)
  (:requirements :durative-actions)
  
  (:predicates
    (gather_materials_pending)
    (gather_materials_done)
    (add_sugar_pending)
    (add_sugar_done)
    (add_coconut_oil_pending)
    (add_coconut_oil_done)
    (mix_ingredients_pending)
    (mix_ingredients_done)
    (apply_scrub_pending)
    (apply_scrub_done)
    (rinse_scrub_pending)
    (rinse_scrub_done)
    (dry_skin_pending)
    (dry_skin_done)
  )

  (:durative-action gather_materials
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (gather_materials_pending)))
    :effect (and (at start (not (gather_materials_pending)))
                 (at end (gather_materials_done)))
  )

  (:durative-action add_sugar
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (add_sugar_pending))
                    (at start (gather_materials_done)))
    :effect (and (at start (not (add_sugar_pending)))
                 (at end (add_sugar_done)))
  )

  (:durative-action add_coconut_oil
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (add_coconut_oil_pending))
                    (at start (gather_materials_done)))
    :effect (and (at start (not (add_coconut_oil_pending)))
                 (at end (add_coconut_oil_done)))
  )

  (:durative-action mix_ingredients
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (mix_ingredients_pending))
                    (at start (add_sugar_done))
                    (at start (add_coconut_oil_done)))
    :effect (and (at start (not (mix_ingredients_pending)))
                 (at end (mix_ingredients_done)))
  )

  (:durative-action apply_scrub
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (apply_scrub_pending))
                    (at start (mix_ingredients_done)))
    :effect (and (at start (not (apply_scrub_pending)))
                 (at end (apply_scrub_done)))
  )

  (:durative-action rinse_scrub
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (rinse_scrub_pending))
                    (at start (apply_scrub_done)))
    :effect (and (at start (not (rinse_scrub_pending)))
                 (at end (rinse_scrub_done)))
  )

  (:durative-action dry_skin
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (dry_skin_pending))
                    (at start (rinse_scrub_done)))
    :effect (and (at start (not (dry_skin_pending)))
                 (at end (dry_skin_done)))
  )
)

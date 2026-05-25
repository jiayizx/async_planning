(define (problem make_scrub)
  (:domain coconut_scrub)
  
  (:init
    (gather_materials_pending)
    (add_sugar_pending)
    (add_coconut_oil_pending)
    (mix_ingredients_pending)
    (apply_scrub_pending)
    (rinse_scrub_pending)
    (dry_skin_pending)
  )

  (:goal (and
    (gather_materials_done)
    (add_sugar_done)
    (add_coconut_oil_done)
    (mix_ingredients_done)
    (apply_scrub_done)
    (rinse_scrub_done)
    (dry_skin_done)
  ))
)

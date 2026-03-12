(define (domain coconut_oil_sugar_scrub)
  (:requirements :durative-actions)
  (:predicates
    (gather_materials_pending)
    (gather_materials_done)
    (add_sugar_pending)
    (add_sugar_done)
    (add_coconut_oil_pending)
    (add_coconut_oil_done)
    (mix_pending)
    (mix_done)
    (apply_pending)
    (apply_done)
    (rinse_pending)
    (rinse_done)
    (dry_pending)
    (dry_done)
  )

  (:durative-action gather_materials
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (gather_materials_pending))
    :effect (and (at start (not (gather_materials_pending))) (at end (gather_materials_done)))
  )

  (:durative-action add_sugar
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (add_sugar_pending)) (at start (gather_materials_done)))
    :effect (and (at start (not (add_sugar_pending))) (at end (add_sugar_done)))
  )

  (:durative-action add_coconut_oil
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (add_coconut_oil_pending)) (at start (gather_materials_done)))
    :effect (and (at start (not (add_coconut_oil_pending))) (at end (add_coconut_oil_done)))
  )

  (:durative-action mix
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (mix_pending)) (at start (add_sugar_done)) (at start (add_coconut_oil_done)))
    :effect (and (at start (not (mix_pending))) (at end (mix_done)))
  )

  (:durative-action apply
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (apply_pending)) (at start (mix_done)))
    :effect (and (at start (not (apply_pending))) (at end (apply_done)))
  )

  (:durative-action rinse
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (rinse_pending)) (at start (apply_done)))
    :effect (and (at start (not (rinse_pending))) (at end (rinse_done)))
  )

  (:durative-action dry
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (dry_pending)) (at start (rinse_done)))
    :effect (and (at start (not (dry_pending))) (at end (dry_done)))
  )
)

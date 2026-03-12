(define (domain finish_maple)
  (:requirements :durative-actions)
  (:predicates
    (stir_pending)
    (stir_done)
    (paint_pending)
    (paint_done)
    (dry_pending)
    (dry_done)
    (sand_pending)
    (sand_done)
    (secondcoat_pending)
    (secondcoat_done)
  )

  (:durative-action stir
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (stir_pending))
    :effect (and (at start (not (stir_pending))) (at end (stir_done)))
  )

  (:durative-action paint
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (paint_pending)) (at start (stir_done)) (at start (secondcoat_done)))
    :effect (and (at start (not (paint_pending))) (at end (paint_done)))
  )

  (:durative-action dry
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (dry_pending)) (at start (paint_done)))
    :effect (and (at start (not (dry_pending))) (at end (dry_done)))
  )

  (:durative-action sand
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (sand_pending))
    :effect (and (at start (not (sand_pending))) (at end (sand_done)))
  )

  (:durative-action secondcoat
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (secondcoat_pending)) (at start (sand_done)))
    :effect (and (at start (not (secondcoat_pending))) (at end (secondcoat_done)))
  )
)

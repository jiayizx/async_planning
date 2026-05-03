(define (domain maple_finish)
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
    (apply_pending)
    (apply_done)
  )

  (:durative-action stir_polyurethane
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (stir_pending))
    :effect (and (at start (not (stir_pending))) (at end (stir_done)))
  )

  (:durative-action paint_first_coat
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (paint_pending)) (at start (stir_done)) (at start (apply_done)))
    :effect (and (at start (not (paint_pending))) (at end (paint_done)))
  )

  (:durative-action dry_first_coat
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (dry_pending)) (at start (paint_done)))
    :effect (and (at start (not (dry_pending))) (at end (dry_done)))
  )

  (:durative-action sand_finish
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (sand_pending)) (at start (dry_done)))
    :effect (and (at start (not (sand_pending))) (at end (sand_done)))
  )

  (:durative-action apply_second_coat
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (apply_pending)) (at start (sand_done)))
    :effect (and (at start (not (apply_pending))) (at end (apply_done)))
  )
)
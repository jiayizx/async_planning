(define (domain calzones)
  (:requirements :durative-actions)
  (:predicates
    (preheat_oven_pending)
    (preheat_oven_done)
    (roll_dough_pending)
    (roll_dough_done)
    (add_filling_pending)
    (add_filling_done)
    (fold_and_pinch_pending)
    (fold_and_pinch_done)
    (bake_calzones_pending)
    (bake_calzones_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (preheat_oven_pending))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )

  (:durative-action roll_dough
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (roll_dough_pending))
    :effect (and (at start (not (roll_dough_pending))) (at end (roll_dough_done)))
  )

  (:durative-action add_filling
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (add_filling_pending)) (at start (roll_dough_done)))
    :effect (and (at start (not (add_filling_pending))) (at end (add_filling_done)))
  )

  (:durative-action fold_and_pinch
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (fold_and_pinch_pending)) (at start (add_filling_done)))
    :effect (and (at start (not (fold_and_pinch_pending))) (at end (fold_and_pinch_done)))
  )

  (:durative-action bake_calzones
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (bake_calzones_pending)) (at start (preheat_oven_done)) (at start (fold_and_pinch_done)))
    :effect (and (at start (not (bake_calzones_pending))) (at end (bake_calzones_done)))
  )
)

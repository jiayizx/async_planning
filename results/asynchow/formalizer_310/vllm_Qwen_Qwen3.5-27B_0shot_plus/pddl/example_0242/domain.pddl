(define (domain calzones)
  (:requirements :durative-actions)
  
  (:predicates
    (preheat_pending)
    (preheat_done)
    (roll_pending)
    (roll_done)
    (fill_pending)
    (fill_done)
    (fold_pending)
    (fold_done)
    (bake_pending)
    (bake_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (preheat_pending)))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action roll_dough
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (roll_pending)))
    :effect (and (at start (not (roll_pending))) (at end (roll_done)))
  )

  (:durative-action add_filling
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (fill_pending)) (at start (roll_done)))
    :effect (and (at start (not (fill_pending))) (at end (fill_done)))
  )

  (:durative-action fold_dough
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (fold_pending)) (at start (fill_done)))
    :effect (and (at start (not (fold_pending))) (at end (fold_done)))
  )

  (:durative-action bake_calzones
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (bake_pending)) (at start (preheat_done)) (at start (fold_done)))
    :effect (and (at start (not (bake_pending))) (at end (bake_done)))
  )
)
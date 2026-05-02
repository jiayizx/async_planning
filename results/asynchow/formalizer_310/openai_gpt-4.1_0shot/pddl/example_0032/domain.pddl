(define (domain chicken-tenders)
  (:requirements :durative-actions)
  (:predicates
    (take_chicken_pending)
    (take_chicken_done)
    (preheat_oven_pending)
    (preheat_oven_done)
    (get_pan_pending)
    (get_pan_done)
    (lay_tinfoil_pending)
    (lay_tinfoil_done)
    (arrange_nuggets_pending)
    (arrange_nuggets_done)
    (cook_nuggets_pending)
    (cook_nuggets_done)
  )

  (:durative-action take_chicken
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (take_chicken_pending))
    :effect (and (at start (not (take_chicken_pending))) (at end (take_chicken_done)))
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (preheat_oven_pending))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )

  (:durative-action get_pan
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (get_pan_pending)) (at start (take_chicken_done)) (at start (preheat_oven_done)))
    :effect (and (at start (not (get_pan_pending))) (at end (get_pan_done)))
  )

  (:durative-action lay_tinfoil
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (lay_tinfoil_pending)) (at start (get_pan_done)))
    :effect (and (at start (not (lay_tinfoil_pending))) (at end (lay_tinfoil_done)))
  )

  (:durative-action arrange_nuggets
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (arrange_nuggets_pending)) (at start (lay_tinfoil_done)))
    :effect (and (at start (not (arrange_nuggets_pending))) (at end (arrange_nuggets_done)))
  )

  (:durative-action cook_nuggets
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (cook_nuggets_pending)) (at start (arrange_nuggets_done)))
    :effect (and (at start (not (cook_nuggets_pending))) (at end (cook_nuggets_done)))
  )
)

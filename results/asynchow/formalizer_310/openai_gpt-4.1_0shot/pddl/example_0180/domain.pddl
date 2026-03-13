(define (domain cook-baby-carrots)
  (:requirements :durative-actions)
  (:predicates
    (rinse_pending)
    (rinse_done)
    (boil_pending)
    (boil_done)
    (cook_pending)
    (cook_done)
    (plate_pending)
    (plate_done)
  )

  (:durative-action do_rinse
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (rinse_pending))
    :effect (and (at start (not (rinse_pending))) (at end (rinse_done)))
  )

  (:durative-action do_boil
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (boil_pending))
    :effect (and (at start (not (boil_pending))) (at end (boil_done)))
  )

  (:durative-action do_cook
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (cook_pending)) (at start (rinse_done)) (at start (boil_done)))
    :effect (and (at start (not (cook_pending))) (at end (cook_done)))
  )

  (:durative-action do_plate
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (plate_pending)) (at start (cook_done)))
    :effect (and (at start (not (plate_pending))) (at end (plate_done)))
  )
)

(define (domain cure_alcohol_breath)
  (:requirements :durative-actions)
  (:predicates
    (rinse_pending) (rinse_done)
    (meal_pending) (meal_done)
    (brush_pending) (brush_done)
    (chew_pending) (chew_done)
    (drink_pending) (drink_done)
  )

  (:durative-action do_rinse
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (rinse_pending)) (at start (brush_done)))
    :effect (and (at start (not (rinse_pending))) (at end (rinse_done)))
  )

  (:durative-action do_meal
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (meal_pending))
    :effect (and (at start (not (meal_pending))) (at end (meal_done)))
  )

  (:durative-action do_brush
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (brush_pending)) (at start (meal_done)))
    :effect (and (at start (not (brush_pending))) (at end (brush_done)))
  )

  (:durative-action do_chew
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (chew_pending)) (at start (drink_done)))
    :effect (and (at start (not (chew_pending))) (at end (chew_done)))
  )

  (:durative-action do_drink
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (drink_pending))
    :effect (and (at start (not (drink_pending))) (at end (drink_done)))
  )
)

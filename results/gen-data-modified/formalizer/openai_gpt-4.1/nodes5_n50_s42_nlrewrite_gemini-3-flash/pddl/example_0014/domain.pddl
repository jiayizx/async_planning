(define (domain cure-alcohol-breath)
  (:requirements :durative-actions)
  (:predicates
    (rinse_pending)
    (rinse_done)
    (eat_pending)
    (eat_done)
    (brush_pending)
    (brush_done)
    (chew_pending)
    (chew_done)
    (drink_pending)
    (drink_done)
  )

  (:durative-action do_rinse
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (rinse_pending)) (at start (brush_done)))
    :effect (and (at start (not (rinse_pending))) (at end (rinse_done)))
  )

  (:durative-action do_eat
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (eat_pending))
    :effect (and (at start (not (eat_pending))) (at end (eat_done)))
  )

  (:durative-action do_brush
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (brush_pending)) (at start (eat_done)))
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

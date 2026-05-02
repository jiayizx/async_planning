(define (domain hang-planters)
  (:requirements :durative-actions)
  (:predicates
    (attach_rope_pending)
    (attach_rope_done)
    (place_plant_pending)
    (place_plant_done)
    (tie_knots_pending)
    (tie_knots_done)
    (cut_cord_pending)
    (cut_cord_done)
    (transfer_plant_pending)
    (transfer_plant_done)
  )

  (:durative-action attach_rope
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (attach_rope_pending)) (at start (tie_knots_done)))
    :effect (and (at start (not (attach_rope_pending))) (at end (attach_rope_done)))
  )

  (:durative-action place_plant
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (place_plant_pending)) (at start (transfer_plant_done)))
    :effect (and (at start (not (place_plant_pending))) (at end (place_plant_done)))
  )

  (:durative-action tie_knots
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (tie_knots_pending)) (at start (cut_cord_done)))
    :effect (and (at start (not (tie_knots_pending))) (at end (tie_knots_done)))
  )

  (:durative-action cut_cord
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (cut_cord_pending))
    :effect (and (at start (not (cut_cord_pending))) (at end (cut_cord_done)))
  )

  (:durative-action transfer_plant
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (transfer_plant_pending))
    :effect (and (at start (not (transfer_plant_pending))) (at end (transfer_plant_done)))
  )
)

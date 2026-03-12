(define (domain hang_planters)
  (:requirements :durative-actions)
  (:predicates
    (attach_rope_pending)
    (attach_rope_done)
    (place_plant_pending)
    (place_plant_done)
    (tie_knots_pending)
    (tie_knots_done)
    (measure_cut_pending)
    (measure_cut_done)
    (transfer_plant_pending)
    (transfer_plant_done)
  )

  (:durative-action attach_rope_to_ceiling
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (attach_rope_pending)) (at start (tie_knots_done)))
    :effect (and (at start (not (attach_rope_pending))) (at end (attach_rope_done)))
  )

  (:durative-action place_plant_in_cradle
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (place_plant_pending)) (at start (transfer_plant_done)))
    :effect (and (at start (not (place_plant_pending))) (at end (place_plant_done)))
  )

  (:durative-action tie_decorative_knots
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (tie_knots_pending)) (at start (measure_cut_done)))
    :effect (and (at start (not (tie_knots_pending))) (at end (tie_knots_done)))
  )

  (:durative-action measure_and_cut_cord
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (measure_cut_pending))
    :effect (and (at start (not (measure_cut_pending))) (at end (measure_cut_done)))
  )

  (:durative-action transfer_plant_to_ceramic_pot
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (transfer_plant_pending))
    :effect (and (at start (not (transfer_plant_pending))) (at end (transfer_plant_done)))
  )
)

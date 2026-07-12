(define (domain starfish-acclimation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (temperature_equalized)
    (drip_acclimation_complete)
    (equipment_prepared)
    (starfish_transferred)
    (starfish_placed)
  )

  (:durative-action float_transport_bag
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (equipment_prepared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (temperature_equalized))
    )
  )

  (:durative-action drip_acclimate
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (equipment_prepared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drip_acclimation_complete))
    )
  )

  (:durative-action prepare_equipment
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (equipment_prepared))
    )
  )

  (:durative-action transfer_to_bucket
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (temperature_equalized))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (starfish_transferred))
    )
  )

  (:durative-action place_in_tank
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (drip_acclimation_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (starfish_placed))
    )
  )
)
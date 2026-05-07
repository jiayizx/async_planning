(define (domain sand_castle_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (supplies_packed)
    (dressed_for_beach)
    (at_beach)
    (parked_at_beach)
    (sand_reached)
  )

  (:durative-action pack_supplies
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_packed)))
  )

  (:durative-action get_dressed
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressed_for_beach)))
  )

  (:durative-action drive_to_beach
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (supplies_packed)) (at start (dressed_for_beach)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_beach)))
  )

  (:durative-action park_car
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (at_beach)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parked_at_beach)))
  )

  (:durative-action walk_to_sand
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (parked_at_beach)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sand_reached)))
  )
)
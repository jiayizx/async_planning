(define (domain peanut_butter_sandwich)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (in_kitchen)
    (cabinet_open)
    (knife_ready)
    (plate_ready)
    (ingredients_ready)
  )

  (:durative-action go_to_kitchen
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (in_kitchen)))
  )

  (:durative-action open_cabinet
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (in_kitchen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cabinet_open)))
  )

  (:durative-action take_out_knife
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (in_kitchen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knife_ready)))
  )

  (:durative-action take_out_plate
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (in_kitchen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plate_ready)))
  )

  (:durative-action take_out_ingredients
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (cabinet_open)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_ready)))
  )
)
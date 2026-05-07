(define (domain apartment_setup)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (couch_placed)
    (coffee_table_placed)
    (tv_obtained)
    (waste_can_placed)
  )

  (:durative-action put_couch
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (couch_placed)))
  )

  (:durative-action put_coffee_table
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (couch_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coffee_table_placed)))
  )

  (:durative-action get_tv
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tv_obtained)))
  )

  (:durative-action put_waste_can
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (couch_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waste_can_placed)))
  )
)
(define (domain wubbanub_cleaning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (in_bag)
    (in_machine)
    (detergent_added)
    (cycle_finished)
    (air_dried)
  )

  (:durative-action place_in_bag
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (in_bag)))
  )

  (:durative-action place_in_machine
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (in_bag)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (in_machine)))
  )

  (:durative-action add_detergent
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (detergent_added)))
  )

  (:durative-action run_cycle
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (in_machine)) (at start (detergent_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cycle_finished)))
  )

  (:durative-action air_dry
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (cycle_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (air_dried)))
  )
)
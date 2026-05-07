(define (domain bus_waiting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (destination_decided)
    (bus_identified)
    (stop_mapped)
    (pass_purchased)
    (pass_collected)
    (at_stop)
    (bus_confirmed)
  )

  (:durative-action think_destination
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (destination_decided)))
  )

  (:durative-action lookup_bus
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (destination_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bus_identified)))
  )

  (:durative-action map_stop
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (bus_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stop_mapped)))
  )

  (:durative-action buy_pass
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pass_purchased)))
  )

  (:durative-action collect_pass
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (pass_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pass_collected)))
  )

  (:durative-action walk_to_stop
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (stop_mapped)) (at start (pass_collected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_stop)))
  )

  (:durative-action check_on_time
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (at_stop)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bus_confirmed)))
  )
)
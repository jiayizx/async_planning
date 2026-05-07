(define (domain amusement_park_trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (money_obtained)
    (park_found)
    (travel_completed)
    (pass_purchased)
    (park_entered)
  )

  (:durative-action get_money
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (money_obtained)))
  )

  (:durative-action find_park
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (park_found)))
  )

  (:durative-action travel_to_park
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (park_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (travel_completed)))
  )

  (:durative-action purchase_pass
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (money_obtained)) (at start (travel_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pass_purchased)))
  )

  (:durative-action enter_park
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (pass_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (park_entered)))
  )
)
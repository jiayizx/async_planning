(define (domain school_departure)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (textbooks_packed)
    (walked_to_parking)
    (keys_located)
    (car_started)
    (school_left)
  )

  (:durative-action pack_textbooks
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (textbooks_packed)))
  )

  (:durative-action walk_to_parking
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (textbooks_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (walked_to_parking)))
  )

  (:durative-action locate_keys
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (keys_located)))
  )

  (:durative-action unlock_and_start_car
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (keys_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (car_started)))
  )

  (:durative-action drive_out_gates
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (walked_to_parking)) (at start (keys_located)) (at start (car_started)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (school_left)))
  )
)
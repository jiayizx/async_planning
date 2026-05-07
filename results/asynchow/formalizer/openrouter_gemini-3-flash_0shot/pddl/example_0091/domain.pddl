(define (domain concert_trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (tickets_bought)
    (dressed)
    (hair_styled)
    (makeup_done)
    (directions_obtained)
    (arrived_at_concert)
  )

  (:durative-action buy_tickets
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_bought)))
  )

  (:durative-action get_dressed
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (tickets_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressed)))
  )

  (:durative-action style_hair
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (dressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hair_styled)))
  )

  (:durative-action do_makeup
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (dressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (makeup_done)))
  )

  (:durative-action get_directions
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (hair_styled)) (at start (makeup_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (directions_obtained)))
  )

  (:durative-action drive_to_concert
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (directions_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_concert)))
  )
)
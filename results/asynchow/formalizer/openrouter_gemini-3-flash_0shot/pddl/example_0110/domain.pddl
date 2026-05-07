(define (domain baseball_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (dressed)
    (friends_called)
    (time_arranged)
    (driven_to_venue)
    (exited_car)
    (at_field)
  )

  (:durative-action dress_to_play
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressed)))
  )

  (:durative-action call_friends
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friends_called)))
  )

  (:durative-action arrange_time
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (friends_called)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (time_arranged)))
  )

  (:durative-action drive_to_venue
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (dressed)) (at start (time_arranged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driven_to_venue)))
  )

  (:durative-action exit_car
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (driven_to_venue)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (exited_car)))
  )

  (:durative-action walk_to_field
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (exited_car)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_field)))
  )
)
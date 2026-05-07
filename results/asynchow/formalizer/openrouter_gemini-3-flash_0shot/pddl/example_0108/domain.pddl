(define (domain yellowstone_trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (attractions_known)
    (map_studied)
    (arrived_at_yellowstone)
    (at_entrance)
    (attractions_visited)
  )

  (:durative-action look_up_attractions
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (attractions_known)))
  )

  (:durative-action look_up_map
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (map_studied)))
  )

  (:durative-action drive_to_yellowstone
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (attractions_known)) (at start (map_studied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_yellowstone)))
  )

  (:durative-action go_to_entrance
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (arrived_at_yellowstone)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_entrance)))
  )

  (:durative-action visit_attractions
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (at_entrance)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (attractions_visited)))
  )
)
(define (domain period_management)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sink_checked)
    (closet_checked)
    (neighbor_asked)
    (store_visited)
    (pad_used)
  )

  (:durative-action check_sink
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sink_checked)))
  )

  (:durative-action check_closet
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (closet_checked)))
  )

  (:durative-action ask_neighbor
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (neighbor_asked)))
  )

  (:durative-action go_to_store
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (store_visited)))
  )

  (:durative-action use_pad
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and 
      (at start (step_pending ?s))
      (at start (sink_checked))
      (at start (closet_checked))
      (at start (neighbor_asked))
      (at start (store_visited))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pad_used)))
  )
)
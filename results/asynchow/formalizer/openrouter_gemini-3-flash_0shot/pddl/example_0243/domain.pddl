(define (domain sew_button)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (old_removed)
    (thread_found)
    (needle_threaded)
    (knot_tied)
    (fabric_marked)
  )

  (:durative-action remove_old
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (old_removed)))
  )

  (:durative-action find_thread
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thread_found)))
  )

  (:durative-action thread_needle
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (thread_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (needle_threaded)))
  )

  (:durative-action tie_knot
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (needle_threaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knot_tied)))
  )

  (:durative-action mark_fabric
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (old_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fabric_marked)))
  )
)
(define (domain canoe_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cedar_sourced)
    (hull_assembled)
    (varnish_applied)
    (seats_installed)
    (exterior_sanded)
  )

  (:durative-action source_cedar
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cedar_sourced)))
  )

  (:durative-action assemble_hull
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (cedar_sourced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hull_assembled)))
  )

  (:durative-action apply_varnish
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (hull_assembled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (varnish_applied)))
  )

  (:durative-action install_seats
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (hull_assembled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seats_installed)))
  )

  (:durative-action sand_exterior
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (hull_assembled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (exterior_sanded)))
  )
)
(define (domain hello_kitty_party)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (balloons_ready)
    (centerpieces_ready)
    (supplies_ready)
    (cutouts_ready)
    (bow_ready)
  )

  (:durative-action prepare_balloons
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (balloons_ready)))
  )

  (:durative-action prepare_centerpieces
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (balloons_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (centerpieces_ready)))
  )

  (:durative-action get_supplies
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_ready)))
  )

  (:durative-action hang_cutouts
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cutouts_ready)))
  )

  (:durative-action make_bow
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bow_ready)))
  )
)
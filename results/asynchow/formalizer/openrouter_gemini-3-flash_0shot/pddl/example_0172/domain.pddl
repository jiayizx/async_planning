(define (domain peel_papaya)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (papaya_halved)
    (seeds_removed)
    (wedges_cut)
    (skin_peeled)
  )

  (:durative-action slice_halves
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (papaya_halved)))
  )

  (:durative-action remove_seeds
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (papaya_halved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seeds_removed)))
  )

  (:durative-action slice_wedges
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (papaya_halved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wedges_cut)))
  )

  (:durative-action peel_wedges
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (wedges_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skin_peeled)))
  )
)
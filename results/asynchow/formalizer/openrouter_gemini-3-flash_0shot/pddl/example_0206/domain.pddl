(define (domain puff_pastry_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shells_ready)
    (brie_ready)
    (puffs_ready)
    (ham_cheese_ready)
    (twists_ready)
  )

  (:durative-action make_shells
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shells_ready)))
  )

  (:durative-action make_baked_brie
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (shells_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (brie_ready)))
  )

  (:durative-action make_filled_puffs
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (shells_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (puffs_ready)))
  )

  (:durative-action make_ham_cheese
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (shells_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ham_cheese_ready)))
  )

  (:durative-action make_herb_twists
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (shells_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (twists_ready)))
  )
)
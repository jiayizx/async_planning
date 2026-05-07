(define (domain layered_cake_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (chocolate_frozen)
    (cake_cut)
    (ganache_ready)
    (cakes_glued)
    (shards_ready)
  )

  (:durative-action step1_melt_freeze
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chocolate_frozen)))
  )

  (:durative-action step2_cut_cake
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cake_cut)))
  )

  (:durative-action step3_melt_ganache
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ganache_ready)))
  )

  (:durative-action step4_glue_cakes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cake_cut)) (at start (ganache_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cakes_glued)))
  )

  (:durative-action step5_break_shards
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (chocolate_frozen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shards_ready)))
  )
)
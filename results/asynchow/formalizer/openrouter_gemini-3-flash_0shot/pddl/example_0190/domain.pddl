(define (domain pokemon_evolution)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cinccino_caught)
    (munchlax_obtained)
    (friendship_raised)
    (munchlax_evolved)
  )

  (:durative-action catch_cinccino
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cinccino_caught)))
  )

  (:durative-action trade_for_munchlax
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (cinccino_caught)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (munchlax_obtained)))
  )

  (:durative-action raise_friendship
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (munchlax_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friendship_raised)))
  )

  (:durative-action use_rare_candy
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (munchlax_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (munchlax_evolved)))
  )
)